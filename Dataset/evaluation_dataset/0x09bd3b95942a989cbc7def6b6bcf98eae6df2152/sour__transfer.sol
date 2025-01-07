    function _transfer(

        address from,

        address to,

        uint256 amount

    ) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        

        if ( from != owner() && to != owner() ) require(tradingOpen, "Trading not yet enabled."); //transfers disabled before openTrading



        // is the token balance of this contract address over the min number of

        // tokens that we need to initiate a swap + liquidity lock?

        // also, don't get caught in a circular liquidity event.

        // also, don't swap & liquify if sender is uniswap pair.

        uint256 contractTokenBalance = balanceOf(address(this));



        if (contractTokenBalance >= _maxTxAmount) {

            contractTokenBalance = _maxTxAmount;

        }



        bool overMinTokenBalance = contractTokenBalance >=

            numTokensSellToAddToLiquidity;

        if (

            overMinTokenBalance &&

            !inSwapAndLiquify &&

            from != uniswapV2Pair &&

            swapAndLiquifyEnabled

        ) {

            contractTokenBalance = numTokensSellToAddToLiquidity;

            //add liquidity

            swapAndLiquify(contractTokenBalance);

        }



        //indicates if fee should be deducted from transfer

        bool takeFee = true;



        //if any account belongs to _isExcludedFromFee account then remove the fee

        if (_isExcludedFromFee[from] || _isExcludedFromFee[to]) {

            takeFee = false;

        }

        if (takeFee) {

            if (!_isExcludedFromLimit[from] && !_isExcludedFromLimit[to]) {

                require(

                    amount <= _maxTxAmount,

                    "Transfer amount exceeds the maxTxAmount."

                );

                if (to != uniswapV2Pair) {

                    require(

                        amount + balanceOf(to) <= _maxWalletSize,

                        "Recipient exceeds max wallet size."

                    );

                }



              

            }

        }



        //transfer amount, it will take reflection, liquidity fee

        _tokenTransfer(from, to, amount, takeFee);

    }
