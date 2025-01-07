    function recordRemoveLiquidity(address recipient, address tokenA, address tokenB, uint amountA, uint amountB, uint liquidity) external lock onlyRouter { 

        address pair = swapFactory.getPair(tokenA, tokenB);

        if (!allowedPairs[pair]) return;

        uint amount0;

        uint amount1;

        {

        uint previousAmount = lpTokenAmounts[recipient][pair];

        if (previousAmount == 0) return;

        uint ratio = Math.sqrt(amountA.mul(amountB)).mul(1e18) / liquidity;   

        uint previousRatio = weightedRatio[recipient][pair];

        if (previousRatio == 0 || (previousRatio != 0 && ratio < previousRatio)) return;

        uint difference = ratio.sub(previousRatio);

        if (previousAmount < liquidity) liquidity = previousAmount;

        weightedRatio[recipient][pair] = (previousRatio.mul(previousAmount.sub(liquidity)) / previousAmount).add(ratio.mul(liquidity) / previousAmount);    

        lpTokenAmounts[recipient][pair] = previousAmount.sub(liquidity);

        amount0 = amountA.mul(difference) / 1e18;

        amount1 = amountB.mul(difference) / 1e18; 

        }



        uint amountNbu;

        if (tokenA != NBU && tokenB != NBU) {

            address tokenToNbuPair = swapFactory.getPair(tokenA, NBU);

            if (tokenToNbuPair != address(0)) {

                amountNbu = INimbusRouter(swapRouter).getAmountsOut(amount0, getPathForToken(tokenA))[1];

            }



            tokenToNbuPair = swapFactory.getPair(tokenB, NBU);

            if (tokenToNbuPair != address(0)) {

                if (amountNbu != 0) {

                    amountNbu = amountNbu.add(INimbusRouter(swapRouter).getAmountsOut(amount1, getPathForToken(tokenB))[1]);

                } else  {

                    amountNbu = INimbusRouter(swapRouter).getAmountsOut(amount1, getPathForToken(tokenB))[1].mul(2);

                }

            } else {

                amountNbu = amountNbu.mul(2);

            }

        } else if (tokenA == NBU) { 

            amountNbu = amount0.mul(2);

        } else {

            amountNbu = amount1.mul(2);

        }

        

        if (amountNbu != 0 && amountNbu <= availableReward() && IERC20(NBU).balanceOf(address(this)) >= amountNbu) {

            IERC20(NBU).transfer(recipient, amountNbu);

            lpRewardUsed = lpRewardUsed.add(amountNbu);

            emit RecordRemoveLiquidityGiveNbu(recipient, pair, amountNbu, amountA, amountB, liquidity);            

        } else {

            uint amountS0;

            uint amountS1;

            {

            (address token0,) = sortTokens(tokenA, tokenB);

            (amountS0, amountS1) = tokenA == token0 ? (amount0, amount1) : (amount1, amount0);

            }

            if (unclaimedAmounts[recipient][pair].length == 0) { 

                unclaimedAmounts[recipient][pair].push(amountS0);

                unclaimedAmounts[recipient][pair].push(amountS1);

            } else {

                unclaimedAmounts[recipient][pair][0] = unclaimedAmounts[recipient][pair][0].add(amountS0);

                unclaimedAmounts[recipient][pair][1] = unclaimedAmounts[recipient][pair][1].add(amountS1);

            }

            

            emit RecordRemoveLiquidityUnclaimed(recipient, pair, amount0, amount1, liquidity);

        }

        ratioUpdateLast[recipient][pair] = block.timestamp;

    }
