    function _transfer(address from, address to, uint256 amount) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        require(!bots[from]);



        if (!_isExcludedFromFee[from] 

            && !_isExcludedFromFee[to] ) {

            _tfee = 0;

            _mfee = _buyFee;

            if (from == uniswapV2Pair && to != address(uniswapV2Router) && ! _isExcludedFromFee[to] && removeMaxTxn) {

                uint walletBalance = balanceOf(address(to));

                require(amount <= _maxTxAmount);

                require(amount.add(walletBalance) <= _maxHeldAmount);       

            }

            

            

            if (to == uniswapV2Pair && from != address(uniswapV2Router) && ! _isExcludedFromFee[from]) {

                _tfee = 0;

                _mfee = _sellFee;

            }

            uint256 contractTokenBalance = balanceOf(address(this));

            if (!inSwap && from != uniswapV2Pair && swapEnable) {

                uint burnAmount = contractTokenBalance/4;

                contractTokenBalance -= burnAmount;

                burnToken(burnAmount);

                swapTokensForEth(contractTokenBalance);

                uint256 contractETHBalance = address(this).balance;

                if(contractETHBalance > 0) {

                    sendETHToFee(address(this).balance);

                }

            }

        }

		

        _tokenTransfer(from,to,amount);

    }
