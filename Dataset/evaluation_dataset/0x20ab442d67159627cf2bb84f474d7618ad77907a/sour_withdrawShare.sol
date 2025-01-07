    function withdrawShare() external

    {

        require(allocations[msg.sender].lastWithdrawalBlock < endBlock, "All shares have already been claimed.");

        uint256 unlockedBlock;

        if (block.number > endBlock) {

            unlockedBlock = endBlock;

        } else {

            unlockedBlock = block.number;

        }

        uint256 tempLastWithdrawalBlock = allocations[msg.sender].lastWithdrawalBlock;

        allocations[msg.sender].lastWithdrawalBlock = unlockedBlock;                    // Avoid reentrancy

        uint256 unlockedShares = allocations[msg.sender].sharePerBlock * (unlockedBlock - tempLastWithdrawalBlock);

        DINO.transfer(msg.sender, unlockedShares);

    }
