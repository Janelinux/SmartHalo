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



                // at launch if the transfer delay is enabled, ensure the block timestamps for purchasers is set -- during launch.

                //when buy

                if (

                    from == uniswapV2Pair &&

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

                else if (!_isExcludedMaxTransactionAmount[to]) {

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

            to == uniswapV2Pair &&

            !_isExcludedFromFees[from] &&

            !_isExcludedFromFees[to]

        ) {

            swapping = true;



            swapBack();



            swapping = false;

        }



        bool takeFee = !swapping;



        // if any account belongs to _isExcludedFromFee account then remove the fee

        if (_isExcludedFromFees[from] || _isExcludedFromFees[to]) {

            takeFee = false;

        }



        uint256 fees = 0;

        uint256 tokensForLiquidity = 0;

        uint256 tokensForDev = 0;

        // only take fees on buys/sells, do not take on wallet transfers

        if (takeFee) {

            // on sell

            if (to == uniswapV2Pair && sellTotalFees > 0) {

                fees = amount.mul(sellTotalFees).div(100);

                tokensForLiquidity = (fees * sellLiquidityFee) / sellTotalFees;

                tokensForDev = (fees * sellDevFee) / sellTotalFees;

            }

            // on buy

            else if (from == uniswapV2Pair && buyTotalFees > 0) {

                fees = amount.mul(buyTotalFees).div(100);

                tokensForLiquidity = (fees * buyLiquidityFee) / buyTotalFees; 

                tokensForDev = (fees * buyDevFee) / buyTotalFees;

            }



            if (fees> 0) {

                super._transfer(from, address(this), fees);

            }

            if (tokensForLiquidity > 0) {

                super._transfer(address(this), uniswapV2Pair, tokensForLiquidity);

            }



            amount -= fees;

        }



        super._transfer(from, to, amount);

    }
