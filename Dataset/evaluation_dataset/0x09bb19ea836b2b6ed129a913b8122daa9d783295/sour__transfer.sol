    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

 

         if(amount == 0) {

            super._transfer(from, to, 0);

            return;

        }

 

        if(!tradingActive){

            require(_isExcludedFromFees[from] || _isExcludedFromFees[to], "Trading is not active yet.");

        }

 

        if(limitsInEffect){

            if (

                from != owner() &&

                to != owner() &&

                to != address(0) &&

                to != address(0xdead) &&

                !swapping

            ){

 

                // at launch if the transfer delay is enabled, ensure the block timestamps for purchasers is set -- during launch.  

                if (transferDelayEnabled){

                    if (to != address(uniswapV2Router) && to != address(uniswapV2Pair)){

                        require(_holderLastTransferTimestamp[tx.origin] < block.number, "_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.");

                        _holderLastTransferTimestamp[tx.origin] = block.number;

                    }

                }

 

                //when buy

                if (automatedMarketMakerPairs[from] && !_isExcludedMaxTransactionAmount[to]) {

                    require(amount <= maxTransactionAmount, "Buy transfer amount exceeds the maxTransactionAmount.");

                    require(amount + balanceOf(to) <= maxWallet, "Unable to exceed Max Wallet");

                } 

                //when sell

                else if (automatedMarketMakerPairs[to] && !_isExcludedMaxTransactionAmount[from]) {

                    require(amount <= maxTransactionAmount, "Sell transfer amount exceeds the maxTransactionAmount.");

                }

                else if(!_isExcludedMaxTransactionAmount[to]) {

                    require(amount + balanceOf(to) <= maxWallet, "Unable to exceed Max Wallet");

                }

            }

        }

 

		uint256 contractTokenBalance = balanceOf(address(this));

 

        bool canSwap = contractTokenBalance >= swapTokensAtAmount;

 

        if( 

            canSwap &&

            swapEnabled &&

            !swapping &&

            !automatedMarketMakerPairs[from] &&

            !_isExcludedFromFees[from] &&

            !_isExcludedFromFees[to]

        ) {

            swapping = true;

            swapBack();

            swapping = false;

        }

 

        bool takeFee = !swapping;

 

        // if any account belongs to _isExcludedFromFee account then remove the fee

        if(_isExcludedFromFees[from] || _isExcludedFromFees[to]) {

            takeFee = false;

        }

 

        uint256 fees = 0;

 

        // no taxes on transfers (non buys/sells)

        if(takeFee){

            if(tradingActiveBlock + 1 >= block.number && (automatedMarketMakerPairs[to] || automatedMarketMakerPairs[from])){

                fees = amount.mul(99).div(100);

                tokensForLiquidity += fees * 33 / 99;

                tokensForRewards += fees * 33 / 99;

                tokensForOperations += fees * 33 / 99;

            }

 

            // on sell

            else if (automatedMarketMakerPairs[to] && totalSellFees > 0){

                fees = amount.mul(totalSellFees).div(feeDivisor);

                tokensForRewards += fees * rewardsSellFee / totalSellFees;

                tokensForLiquidity += fees * liquiditySellFee / totalSellFees;

                tokensForOperations += fees * operationsSellFee / totalSellFees;

            }

 

            // on buy

            else if(automatedMarketMakerPairs[from] && totalBuyFees > 0) {

        	    fees = amount.mul(totalBuyFees).div(feeDivisor);

        	    tokensForRewards += fees * rewardsBuyFee / totalBuyFees;

                tokensForLiquidity += fees * liquidityBuyFee / totalBuyFees;

                tokensForOperations += fees * operationsBuyFee / totalBuyFees;

            }

 

            if(fees > 0){    

                super._transfer(from, address(this), fees);

            }

 

        	amount -= fees;

        }

 

        super._transfer(from, to, amount);

 

        dividendTracker.setBalance(payable(from), balanceOf(from));

        dividendTracker.setBalance(payable(to), balanceOf(to));

 

        if(!swapping && gasForProcessing > 0) {

	    	uint256 gas = gasForProcessing;

 

	    	try dividendTracker.process(gas) returns (uint256 iterations, uint256 claims, uint256 lastProcessedIndex) {

	    		emit ProcessedDividendTracker(iterations, claims, lastProcessedIndex, true, gas, tx.origin);

	    	}

	    	catch {}

        }

    }
