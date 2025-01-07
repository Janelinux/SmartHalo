    function applyTaxes(address sender, uint amount) internal returns (uint newAmountTransfer) {
        uint amountGrowth = amount * growthFees;
        uint amountVault = amount * vaultFees;
        uint amountLiquidity = amount * liquidityFees;
        uint amountAutoLiquidity = amount * autoLiquidityFees;
        // Cheaper without "no division by 0" check
        unchecked {
            amountGrowth /= 100;
            amountVault /= 100;
            amountLiquidity /= 100;
            amountAutoLiquidity /= 100;
        }

        newAmountTransfer = amount
            - amountGrowth
            - amountVault
            - amountLiquidity
            - amountAutoLiquidity;

        // Apply autoselling ratio
        uint autoSellGrowth = amountGrowth * autoSellingRatio;
        uint autoSellVault = amountVault * autoSellingRatio;
        uint autoSellLiquidity = amountLiquidity * autoSellingRatio;
        // Cheaper without "no division by 0" check
        unchecked {
            autoSellGrowth /= 100;
            autoSellVault /= 100;
            autoSellLiquidity /= 100;
        }

        // Transfer the remaining tokens to wallets
        super._transfer(sender, growthAddress, amountGrowth - autoSellGrowth);
        super._transfer(sender, vaultAddress, amountVault - autoSellVault);
        super._transfer(sender, liquidityAddress, amountLiquidity - autoSellLiquidity);

        // Transfer all autoselling + autoLP to the contract
        super._transfer(sender, address(this), autoSellGrowth
                                               + autoSellVault
                                               + autoSellLiquidity
                                               + amountAutoLiquidity);

        uint tokenBalance = balanceOf(address(this));

        // Only swap if it's worth it
        if (tokenBalance >= (minAmountForSwap * 1 ether)
            && uniswapV2Pair != address(0)
            && uniswapV2Pair != msg.sender) {

            swapAndLiquify(tokenBalance,
                            autoSellGrowth,
                            autoSellVault,
                            autoSellLiquidity);
        } else {
            // Stack tokens to be swapped for autoselling
            autoSellGrowthStack = autoSellGrowthStack + autoSellGrowth;
            autoSellVaultStack = autoSellVaultStack + autoSellVault;
            autoSellLiquidityStack = autoSellLiquidityStack + autoSellLiquidity;
        }
    }
