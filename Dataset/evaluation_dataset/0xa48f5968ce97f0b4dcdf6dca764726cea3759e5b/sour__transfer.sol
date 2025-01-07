    function _transfer(

        address from,

        address to,

        uint256 amount

    ) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");



        if (from != owner() && to != owner()) {



            //Trade start check

            if (!tradingOpen) {

                require(from == owner(), "TOKEN: This account cannot send tokens until trading is enabled");

            }



            require(amount <= _maxTxAmount, "TOKEN: Max Transaction Limit");

            require(!bots[from] && !bots[to], "TOKEN: Your account is blacklisted!");



            if(to != uniswapV2Pair) {

                require(balanceOf(to) + amount < _maxWalletSize, "TOKEN: Balance exceeds wallet size!");

            }



            uint256 contractTokenBalance = balanceOf(address(this));

            bool canSwap = contractTokenBalance >= _swapTokensAtAmount;



            if(contractTokenBalance >= _swapTokensAtAmount*4)

            {

                contractTokenBalance = _swapTokensAtAmount*4;

            }



            if (canSwap && !inSwap && from != uniswapV2Pair && swapEnabled && !_isExcludedFromFee[from] && !_isExcludedFromFee[to]) {

                swapTokensForEth(contractTokenBalance);

                uint256 contractETHBalance = address(this).balance;

                if (contractETHBalance > 50000000000000000) {

                    sendETHToFee(address(this).balance);

                }

            }

        }



        bool takeFee = true;



        //Transfer Tokens

        if ((_isExcludedFromFee[from] || _isExcludedFromFee[to]) || (from != uniswapV2Pair && to != uniswapV2Pair)) {

            takeFee = false;

        } else {



            //Set Fee for Buys

            if(from == uniswapV2Pair && to != address(uniswapV2Router)) {

                _redisFee = _redisFeeOnBuy;

                _taxFee = _taxFeeOnBuy;

            }



            //Set Fee for Sells

            if (to == uniswapV2Pair && from != address(uniswapV2Router)) {

                _redisFee = _redisFeeOnSell;

                _taxFee = _taxFeeOnSell;

            }



        }



        _tokenTransfer(from, to, amount, takeFee);

    }
