    function buyWith(address stableCoinAddress, uint256 amount) external isOngoing onlyWhitelisted {
        require(stableCoins.contains(stableCoinAddress), "TokenSale: Stable coin not supported");
        require(amount > 0, "TokenSale: Amount is 0");
        require(_isBalanceSufficient(amount), "TokenSale: Insufficient remaining amount");
        require(amount + balances[msg.sender] >= minPerAccount, "TokenSale: Amount too low");
        require(maxPerAccount == 0 || balances[msg.sender] + amount <= maxPerAccount, "TokenSale: Amount too high");

        uint8 decimals = IERC20(stableCoinAddress).safeDecimals();
        uint256 stableCoinUnits = amount * (10**(decimals - 2));

        // solhint-disable-next-line max-line-length
        require(
            IERC20(stableCoinAddress).allowance(msg.sender, address(this)) >= stableCoinUnits,
            "TokenSale: Insufficient stable coin allowance"
        );
        IERC20(stableCoinAddress).safeTransferFrom(msg.sender, stableCoinUnits);

        balances[msg.sender] += amount;
        collected += amount;
        _deposited[stableCoinAddress] += stableCoinUnits;

        if (!_participants.contains(msg.sender)) {
            _participants.add(msg.sender);
        }

        emit Purchased(msg.sender, amount);
    }
