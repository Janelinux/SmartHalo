    function distribute() external {
        if (msg.sender != staking) revert Only_Staking();
        if (!unlockRebase) revert Not_Unlocked();

        treasury.mint(staking, nextRewardFor(staking));

        // mint to pools and sync
        //
        // this removes opportunity cost for liquidity providers by
        // sending rebase rewards directly into the liquidity pool
        //
        // note that this does not add additional emissions (user could
        // be staked instead and get the same tokens)

        for (uint256 i = 0; i < pools.length; i++) {
            address pool = pools[i];
            if (pool != address(0)) {
                treasury.mint(pool, nextRewardFor(pool));
                IUniswapV2Pair(pool).sync();
            }
        }

        if (adjustment.rate != 0) {
            adjust();
        }

        unlockRebase = false;
    }
