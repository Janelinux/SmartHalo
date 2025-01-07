    function stake(uint256 _amount, address _recipient) public {
        // if override staking, then don't allow stake
        require(!pauseStaking, "Staking is paused");
        // amount must be non zero
        require(_amount > 0, "Must have valid amount");

        uint256 circulatingSupply = IRewardToken(REWARD_TOKEN)
            .circulatingSupply();

        // Don't rebase unless tokens are already staked or could get locked out of staking
        if (circulatingSupply > 0) {
            rebase();
        }

        IERC20(STAKING_TOKEN).safeTransferFrom(
            msg.sender,
            address(this),
            _amount
        );

        Claim storage info = warmUpInfo[_recipient];

        // if claim is available then auto claim tokens
        if (_isClaimAvailable(_recipient)) {
            claim(_recipient);
        }

        _depositToTokemak(_amount);

        // skip adding to warmup contract if period is 0
        if (warmUpPeriod == 0) {
            IERC20(REWARD_TOKEN).safeTransfer(_recipient, _amount);
        } else {
            // create a claim and send tokens to the warmup contract
            warmUpInfo[_recipient] = Claim({
                amount: info.amount + _amount,
                gons: info.gons +
                    IRewardToken(REWARD_TOKEN).gonsForBalance(_amount),
                expiry: epoch.number + warmUpPeriod
            });

            IERC20(REWARD_TOKEN).safeTransfer(WARM_UP_CONTRACT, _amount);
        }
    }
