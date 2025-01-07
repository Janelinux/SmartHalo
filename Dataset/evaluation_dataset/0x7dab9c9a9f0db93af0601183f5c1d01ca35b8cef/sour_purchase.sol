    function purchase(uint256 _val) external returns (bool) {
        require(openIdo == true, "IDO is closed");
        soldAmount = soldAmount.add(_val);
        require(
            soldAmount <= goalAmount,
            "The amount entered exceeds IDO Goal"
        );
        uint256 _purchaseAmount = calculateSaleQuote(_val);
        uint256 _newAmount = bought[msg.sender] + _purchaseAmount;
        require(_newAmount <= maxAmount, "Above Presale allocation.");
        require(_newAmount >= minAmount, "Below Presale allocation.");

        IERC20Upgradeable(usdc).safeTransferFrom(
            msg.sender,
            address(this),
            _val
        );
        bought[msg.sender] = _newAmount;
        return true;
    }
