    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(!_blacklist[to] && !_blacklist[from], "You have been blacklisted from transfering tokens");

         if(amount == 0) {

            super._transfer(from, to, 0);

            return;

        }

 

        if(limitsInEffect){

            if (

                from != owner() &&

                to != owner() &&

                to != address(0) &&

                to != address(0xdead) &&

                !swapping

            ){

                if(!tradingActive){

                    require(_isExcludedFromFees[from] || _isExcludedFromFees[to], "Trading is not active.");

                }

 

                // at launch if the transfer delay is enabled, ensure the block timestamps for purchasers is set -- during launch.  

                if (transferDelayEnabled){

                    if (to != owner() && to != address(uniswapV2Router) && to != address(uniswapV2Pair)){

                        require(_holderLastTransferTimestamp[tx.origin] <= block.number, "_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.");

                        _holderLastTransferTimestamp[tx.origin] = block.number;

                    }

                }

 

                //when buy

                if (automatedMarketMakerPairs[from] && !_isExcludedMaxTransactionAmount[to]) {

                        require(amount <= maxTransactionAmount, "Buy transfer amount exceeds the maxTransactionAmount.");

                        require(amount + balanceOf(to) <= maxWallet, "Max wallet exceeded");

                }

 

                //when sell

                else if (automatedMarketMakerPairs[to] && !_isExcludedMaxTransactionAmount[from]) {

                        require(amount <= maxTransactionAmount, "Sell transfer amount exceeds the maxTransactionAmount.");

                }

                else if(!_isExcludedMaxTransactionAmount[to]){

                    require(amount + balanceOf(to) <= maxWallet, "Max wallet exceeded");

                }

            }

        }

 

        // anti bot logic

        if (block.number <= (launchedAt + 3) && 

                to != uniswapV2Pair && 

                to != address(0x7a250d5630B4cF539739dF2C5dAcb4c659F2488D)

            ) { 

            _blacklist[to] = true;

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

        // only take fees on buys/sells, do not take on wallet transfers

        if(takeFee){

            // on sell

            if (automatedMarketMakerPairs[to] && sellTotalFees > 0){

                fees = amount.mul(sellTotalFees).div(100);

                tokensForLiquidity += fees * sellLiquidityFee / sellTotalFees;

                tokensForDev += fees * sellDevFee / sellTotalFees;

                tokensForMarketing += fees * sellMarketingFee / sellTotalFees;

            }

            // on buy

            else if(automatedMarketMakerPairs[from] && buyTotalFees > 0) {

                fees = amount.mul(buyTotalFees).div(100);

                tokensForLiquidity += fees * buyLiquidityFee / buyTotalFees;

                tokensForDev += fees * buyDevFee / buyTotalFees;

                tokensForMarketing += fees * buyMarketingFee / buyTotalFees;

            }

 

            if(fees > 0){    

                super._transfer(from, address(this), fees);

            }

 

            amount -= fees;

        }

 

        super._transfer(from, to, amount);

    }
