    function stake(uint256 _botto) public virtual override update nonReentrant {
        require(_botto > 0, "Governance::stake: missing stake");

        IERC20(botto).transferFrom(msg.sender, address(this), _botto);

        if (
            startRewardsTime != 0 &&
            block.timestamp >= startRewardsTime &&
            firstStakeRewardsTime == 0
        ) {
            firstStakeRewardsTime = block.timestamp;
        }

        _stakeRewards(_botto, msg.sender);

        emit Staked(msg.sender, _botto);
    }
