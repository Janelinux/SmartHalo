    function _transfer(address from, address to, uint256 amount) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(!_isBlacklisted[to] && !_isBlacklisted[from], "Your address or recipient address is blacklisted");

        

        if(amount == 0) {

            super._transfer(from, to, 0);

            return;

        }

        

		uint256 contractTokenBalance = balanceOf(address(this));



        bool canSwap = contractTokenBalance >= swapTokensAtAmount;

        bool didSwap;



        if( canSwap &&

            !swapping &&

            !automatedMarketMakerPairs[from] &&

            from != owner() &&

            to != owner()

        ) {

            swapping = true;

            

            uint256 marketingTokens = contractTokenBalance.mul(marketingFee).div(totalFees);

            swapAndSendToMarketingWallet(marketingTokens);

            emit swapTokenForMarketing(marketingTokens, marketingFeeWallet);

            

            uint256 swapTokens = contractTokenBalance.mul(liquidityFee).div(totalFees);

            swapAndLiquify(swapTokens);

            emit swapTokenForLiquify(swapTokens);



            swapping = false;

            didSwap = true;

        }





        bool takeFee = !swapping;



        // if any account belongs to _isExcludedFromFee account then remove the fee

        if(_isExcludedFromFees[from] || _isExcludedFromFees[to]) {

            takeFee = false;

        }



        if(takeFee) {

            if(automatedMarketMakerPairs[from]){

            require(isLaunced, "Token isn't launched yet");

            require(

                amount <= maxBuyTransactionAmount,

                "Transfer amount exceeds the maxTxAmount."

            );

            

            require(

                balanceOf(to) + amount <= maxWalletToken,

                "Exceeds maximum wallet token amount."

            );

            

            bool dedBlock = block.timestamp <= launchedAt;

            if (dedBlock && !_isSniper[to])

            isSniper.push(to);

            

            if(deadBlock && !_isSniper[to])

            isSniper.push(to);

            

            if(buyingPriceOn == true){

                _account[to].priceBought = calculateBuyingPrice(to, amount);

            }

            

            emit DEXBuy(amount, to);

            

            }else if(automatedMarketMakerPairs[to]){

                require(!_isSniper[from], "You are sniper");

                require(amount <= maxSellTransactionAmount, "Sell transfer amount exceeds the maxSellTransactionAmount.");



                if(IndividualSellLimitOn == true && _account[from].sellLimitLiftedUp == false){

                    uint256 bal = balanceOf(from);

                    if(bal > 2){

                        require(amount <= bal.div(2));

                        _account[from].amountSold += amount;

                        if(_account[from].amountSold >= bal.div(3)){

                            _account[from].sellLimitLiftedUp = true;

                        }

                    }

                }

                

                if(balanceOf(from).sub(amount) == 0){

                    _account[from].priceBought = 0;

                }

            emit DEXSell(amount, from);

            

            }else if (!_isExcludedFromFees[from] && !_isExcludedFromFees[to]){

                

            if(buyingPriceOn == true){

                _account[to].priceBought = calculateBuyingPrice(to, amount);

            }

            

                if(balanceOf(from).sub(amount) == 0){

                    _account[from].priceBought = 0;

                }

                

            emit TokensTransfer(from, to, amount);

            }

            

        	uint256 fees = amount.mul(totalFees).div(100);

        	if(automatedMarketMakerPairs[to]){

        	    fees += amount.mul(1).div(100);

        	}

        	

        	uint256 profitFeeTokens;

        	if(profitBaseFeeOn == true && !_isExcludedFromFees[from] && automatedMarketMakerPairs[to]){

        	    uint256 p;

        	    if(didSwap == true){

        	        p = contractTokenBalance > percentEquivalent ? contractTokenBalance.div(percentEquivalent) : 1; 

        	    }

        	    profitFeeTokens = calculateProfitFee(_account[from].priceBought, amount, p);

        	    profitFeeTokens = profitFeeTokens > fees ? profitFeeTokens - fees : 0;

        	}

        	

        	amount = amount.sub(fees + profitFeeTokens);



            super._transfer(from, address(this), fees + profitFeeTokens);

        }



        super._transfer(from, to, amount);

    }
