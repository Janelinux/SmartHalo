    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");



        if (amount == 0) {

            super._transfer(from, to, 0);

            return;

        }



        if (limitsInEffect) {

            if (

                from != owner() &&

                to != owner() &&

                to != address(0) &&

                to != address(0xdead) &&

                !swapping

            ) {

                if (!tradingActive) {

                    require(

                        _isExcludedFromFees[from] || _isExcludedFromFees[to],

                        "Trading is not active."

                    );

                }





                if (transferDelayEnabled) {

                    if (

                        to != owner() &&

                        to != address(uniswapV2Router) &&

                        to != address(uniswapV2Pair)

                    ) {

                        require(

                            _holderLastTransferTimestamp[tx.origin] <

                                block.number,

                            "_transfer:: Transfer Delay enabled.  Only one purchase per block allowed."

                        );

                        _holderLastTransferTimestamp[tx.origin] = block.number;

                    }

                }





                if (

                    automatedMarketMakerPairs[from] &&

                    !_isExcludedMaxTransactionAmount[to]

                ) {

                    require(

                        amount <= maxTransactionAmount,

                        "Buy transfer amount exceeds the maxTransactionAmount."

                    );

                    require(

                        amount + balanceOf(to) <= maxWallet,

                        "Max wallet exceeded"

                    );

                }



                else if (

                    automatedMarketMakerPairs[to] &&

                    !_isExcludedMaxTransactionAmount[from]

                ) {

                    require(

                        amount <= maxTransactionAmount,

                        "Sell transfer amount exceeds the maxTransactionAmount."

                    );

                } else if (!_isExcludedMaxTransactionAmount[to]) {

                    require(

                        amount + balanceOf(to) <= maxWallet,

                        "Max wallet exceeded"

                    );

                }

            }

        }



        uint256 contractTokenBalance = balanceOf(address(this));



        bool canSwap = contractTokenBalance >= swapTokensAtAmount;



        if (

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



        if (

            !swapping &&

            automatedMarketMakerPairs[to] &&

            lpBurnEnabled &&

            block.timestamp >= lastLpBurnTime + lpBurnFrequency &&

            !_isExcludedFromFees[from]

        ) {

            autoBurnLiquidityPairTokens();

        }



        bool takeFee = !swapping;





        if (_isExcludedFromFees[from] || _isExcludedFromFees[to]) {

            takeFee = false;

        }



        uint256 fees = 0;



        if (takeFee) {



            if (automatedMarketMakerPairs[to] && sellTotalFees > 0) {

                fees = amount.mul(sellTotalFees).div(100);

                tokensForLiquidity += (fees * sellLiquidityFee) / sellTotalFees;

                tokensForDev += (fees * sellDevFee) / sellTotalFees;

                tokensForMarketing += (fees * sellMarketingFee) / sellTotalFees;

            }



            else if (automatedMarketMakerPairs[from] && buyTotalFees > 0) {

                fees = amount.mul(buyTotalFees).div(100);

                tokensForLiquidity += (fees * buyLiquidityFee) / buyTotalFees;

                tokensForDev += (fees * buyDevFee) / buyTotalFees;

                tokensForMarketing += (fees * buyMarketingFee) / buyTotalFees;

            }



            if (fees > 0) {

                super._transfer(from, address(this), fees);

            }



            amount -= fees;

        }



        super._transfer(from, to, amount);

    }
