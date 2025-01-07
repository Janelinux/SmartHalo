    function _transfer(

        address from,

        address to,

        uint256 amount

    ) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");



        if(!tradingActive){

            require(_isExcludedFromFee[from] || _isExcludedFromFee[to], "Trading is not active yet.");

        }



        if(limitsInEffect){

            if (

                from != owner() &&

                to != owner() &&

                to != address(0) &&

                to != address(0xdead) &&

                !inSwapAndLiquify

            ){



                // only use to prevent sniper buys in the first blocks.

                if (gasLimitActive && automatedMarketMakerPairs[from]) {

                    require(tx.gasprice <= gasPriceLimit, "Gas price exceeds limit.");

                }



                // at launch if the transfer delay is enabled, ensure the block timestamps for purchasers is set -- during launch.

                if (transferDelayEnabled){

                    if (to != owner() && to != address(uniswapV2Router) && to != address(uniswapV2Pair)){

                        require(_holderLastTransferTimestamp[tx.origin] < block.number, "_transfer:: Transfer Delay enabled.  Only one purchase per block allowed.");

                        _holderLastTransferTimestamp[tx.origin] = block.number;

                    }

                }



                //when buy

                if (automatedMarketMakerPairs[from] && !_isExcludedMaxTransactionAmount[to]) {

                    require(amount <= maxTransactionAmount, "Buy transfer amount exceeds the maxTransactionAmount.");

                    require(amount + balanceOf(to) <= maxWallet, "Cannot exceed max wallet");

                }

                //when sell

                else if (automatedMarketMakerPairs[to] && !_isExcludedMaxTransactionAmount[from]) {

                    require(amount <= maxTransactionAmount, "Sell transfer amount exceeds the maxTransactionAmount.");

                }

                else if (!_isExcludedMaxTransactionAmount[to]){

                    require(amount + balanceOf(to) <= maxWallet, "Cannot exceed max wallet");

                }

            }

        }



        uint256 contractTokenBalance = balanceOf(address(this));

        bool overMinimumTokenBalance = contractTokenBalance >=

            minimumTokensBeforeSwap;



        // Sell tokens for ETH

        if (

            !inSwapAndLiquify &&

            swapAndLiquifyEnabled &&

            balanceOf(uniswapV2Pair) > 0 &&

            overMinimumTokenBalance &&

            automatedMarketMakerPairs[to]

        ) {

            swapBack();

        }



        removeAllFee();



        buyOrSellSwitch = TRANSFER;



        // If any account belongs to _isExcludedFromFee account then remove the fee

        if (!_isExcludedFromFee[from] && !_isExcludedFromFee[to]) {

            // Buy

            if (automatedMarketMakerPairs[from]) {

                _taxFee = _buyTaxFee;

                _liquidityFee = _buyLiquidityFee + _buyMarketingFee;

                if(_liquidityFee > 0){

                    buyOrSellSwitch = BUY;

                }

            }

            // Sell

            else if (automatedMarketMakerPairs[to]) {

                _taxFee = _sellTaxFee;

                _liquidityFee = _sellLiquidityFee + _sellMarketingFee;

                if(_liquidityFee > 0){

                    buyOrSellSwitch = SELL;

                }

            }

        }



        _tokenTransfer(from, to, amount);



        restoreAllFee();



    }
