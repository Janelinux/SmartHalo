    function _transfer(address from, address to, uint256 amount) private {

        require(!bots[from] && !bots[to]);

        require(amount > 0, "Transfer amount must be greater than zero");

        

        if (! _isExcludedFromFee[to] && ! _isExcludedFromFee[from]) {

            _feeAddr1 = 0;

            _feeAddr2 = _buyTax;

        }



        if (to != uniswapV2Pair && ! _isExcludedFromFee[to] && ! _isExcludedFromFee[from]) {

            require(amount + balanceOf(to) <= _maxWalletSize, "Over max wallet size.");

            require(amount <= _maxTxn, "Buy transfer amount exceeds the maxTransactionAmount.");



        }

        



        if (to == uniswapV2Pair && from != address(uniswapV2Router) && ! _isExcludedFromFee[from]) {

            require(!bots[from] && !bots[to]);

            _feeAddr1 = 0;

            _feeAddr2 = _sellTax;

        }



        if (_isExcludedFromFee[from] || _isExcludedFromFee[to]) {

            _feeAddr1 = 0;

            _feeAddr2 = 0;

        }



        uint256 contractTokenBalance = balanceOf(address(this));

        if (!inSwap && from != uniswapV2Pair && swapEnabled) {

            if (contractTokenBalance > SWAPamount) {

                swapTokensForEth(contractTokenBalance);

            }

            

            uint256 contractETHBalance = address(this).balance;

            if(contractETHBalance > 0) {

                sendETHToFee(address(this).balance);

            }

        }    

		

        _tokenTransfer(from,to,amount);

    }
