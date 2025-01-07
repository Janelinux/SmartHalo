    function memberStake(address token, uint256 amount, uint256 memberId) public payable nonReentrant {
        if (
            !(
                (whitelisted[token] && amount !=0) || (token == ETH && msg.value != 0)
            )
        ) revert InvalidStake();
        if (memberId == 0) revert NotMember();

        // @dev increments the stake id for each member
        uint stakeCount = ++stakes[memberId]; 
        
        // @dev function for auto transfering out stakes 

        if (msg.value > 0 && token == ETH){
            (bool success, ) = destination.call{value: msg.value}("");
            require(success, "Transfer failed.");
            emit Staked(msg.sender, ETH, msg.value, memberId, stakes[memberId]);
        } else {
            IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
            emit Staked(msg.sender, token, amount, memberId, stakeCount);
        }
        
    }
