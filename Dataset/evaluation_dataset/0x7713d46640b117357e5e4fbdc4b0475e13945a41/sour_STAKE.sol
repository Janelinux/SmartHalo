    function STAKE(uint256 _amount) external {

        require(block.timestamp <= subscriptionEnds, "subscription time expires");

        

        require(stakers[msg.sender].stakedAmount.add(_amount) >= minTokensPerUser && stakers[msg.sender].stakedAmount.add(_amount) <= maxTokensPerUser, "exceeds allowed ranges");

        

        uint256 deduction = onePercent(_amount).mul(5); // 5% transaction cost



        totalStaked = totalStaked.add(_amount.sub(deduction));

        

        require(totalStaked <= maxSlots, "no free slots");

        

        // transfer the tokens from caller to staking contract

        vanilla.transferFrom(msg.sender, address(this), _amount);

        

        // record it in contract's storage

        stakers[msg.sender].stakedAmount = stakers[msg.sender].stakedAmount.add(_amount.sub(deduction)); // add to the stake or fresh stake

        

        emit Staked(msg.sender, _amount.sub(deduction));

    }
