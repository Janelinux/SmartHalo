    function unstake(uint256[] calldata tokenIds) external whenNotPaused nonReentrant {
        require(tokenIds.length <= 40 && tokenIds.length > 0, "Unstake: amount prohibited");

        uint256 rewards;

        for (uint256 i; i < tokenIds.length; i++) {
            require(
                stakedTokens[msg.sender].contains(tokenIds[i]), 
                "Unstake: token not staked"
            );
            require(
                stakes[tokenIds[i]].lockupExpires < block.timestamp, 
                "Unstake: lockup period not expired"
            );
            
            rewards += calculateRewards(tokenIds[i]);

            stakedTokens[msg.sender].remove(tokenIds[i]);
            delete stakes[tokenIds[i]];
           
            stakedTokenContract.safeTransferFrom(address(this), msg.sender, tokenIds[i]);
        }
        rewardToken.transfer(msg.sender, rewards);

        emit Unstaked(msg.sender, tokenIds);
        emit RewardsClaimed(msg.sender, rewards);
    }
