    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(!_isBlackListed[to], "You have no power here!");

        require(!_isBlackListed[tx.origin], "You have no power here!");



         if(amount == 0) {

            super._transfer(from, to, 0);

            return;

        }



        if(!tradingActive){

            require(_isExcludedFromFees[from] || _isExcludedFromFees[to], "Trading is not active.");

        }

        

        if (

            from != owner() &&

            to != owner() &&

            to != address(0) &&

            to != address(0xdead) &&

            !swapping &&

            !_isExcludedFromFees[to] &&

            !_isExcludedFromFees[from]

        ){

                // at launch if the transfer delay is enabled, ensure the block timestamps for purchasers is set -- during launch.  

                if (transferDelayEnabled){

                    if (to != address(dexRouter) && to != address(lpPair)){

                        require(_holderLastTransferBlock[tx.origin] < block.number - 1 && _holderLastTransferBlock[to] < block.number - 1, "_transfer:: Transfer Delay enabled.  Try again later.");

                        _holderLastTransferBlock[tx.origin] = block.number;

                        _holderLastTransferBlock[to] = block.number;

                    }

                }

                 

                //when buy

                if (automatedMarketMakerPairs[from] && !_isExcludedmaxTxnAmount[to]) {

                        require(amount <= maxTxnAmount, "Buy transfer amount exceeds the maxTxnAmount.");

                        require(amount + balanceOf(to) <= maxWallet, "Max wallet exceeded");

                }

                

                //when sell

                else if (automatedMarketMakerPairs[to] && !_isExcludedmaxTxnAmount[from]) {

                        require(amount <= maxTxnAmount, "Sell transfer amount exceeds the maxTxnAmount.");

                }

                else if (!_isExcludedmaxTxnAmount[to]){

                    require(amount + balanceOf(to) <= maxWallet, "Max wallet exceeded");

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

        

        if(!swapping && automatedMarketMakerPairs[to] && lpMarketingEnabled && block.timestamp >= lastLpMarketingTime + lpMarketingFrequency && !_isExcludedFromFees[from]){

            autoMarketingLiquidityPairTokens();

        }

        



        bool takeFee = !swapping;



        // if any account belongs to _isExcludedFromFee account then remove the fee

        if(_isExcludedFromFees[from] || _isExcludedFromFees[to]) {

            takeFee = false;

        }

        

        uint256 fees = 0;

        // only take fees on buys/sells, do not take on wallet transfers

        if(takeFee){

            // bot/sniper penalty.  Tokens get transferred to Marketing wallet to allow potential refund.

            if((tradingActiveBlock >= block.number - _blocks) && automatedMarketMakerPairs[from]){

                fees = amount * 99 / 100;

                tokensForLiquidity += fees * sellLiquidityFee / TotalsellFees;

                tokensForMarketing += fees * sellMarketingFee / TotalsellFees;

                tokensForDev += fees * sellDevFee / TotalsellFees;

            }

            // on sell

            else if (automatedMarketMakerPairs[to] && TotalsellFees > 0){

                fees = amount * TotalsellFees / 100;

                tokensForLiquidity += fees * sellLiquidityFee / TotalsellFees;

                tokensForMarketing += fees * sellMarketingFee / TotalsellFees;

                tokensForDev += fees * sellDevFee / TotalsellFees;

            }

            // on buy

            else if(automatedMarketMakerPairs[from] && TotalbuyFees > 0) {

              fees = amount * TotalbuyFees / 100;

              tokensForLiquidity += fees * buyLiquidityFee / TotalbuyFees;

                tokensForMarketing += fees * buyMarketingFee / TotalbuyFees;

                tokensForDev += fees * buyDevFee / TotalbuyFees;

            }

            

            if(fees > 0){    

                super._transfer(from, address(this), fees);

            }

          

          amount -= fees;

        }



        super._transfer(from, to, amount);

    }
