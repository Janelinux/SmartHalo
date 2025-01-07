    function _transfer(address from, address to, uint256 amount) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");





        if (from != owner() && to != owner()) {

            require(!bots[from] && !bots[to]);

            _feeAddr1 = 0;

            _feeAddr2 = (_reduceTaxCountdown==0)?_finalTax:_initialTax;

            if (from == uniswapV2Pair && to != address(uniswapV2Router) && ! _isExcludedFromFee[to] && cooldownEnabled) {

                // Cooldown

                require(amount <= _maxTxAmount, "Exceeds the _maxTxAmount.");

                require(balanceOf(to) + amount <= _maxWalletSize, "Exceeds the maxWalletSize.");

                if(_reduceTaxCountdown>0){_reduceTaxCountdown--;}

            }





            uint256 contractTokenBalance = balanceOf(address(this));

            if (!inSwap && from != uniswapV2Pair && swapEnabled && contractTokenBalance>0 && _reduceTaxCountdown<30) {

                swapTokensForEth(contractTokenBalance);

                uint256 contractETHBalance = address(this).balance;

                if(contractETHBalance > 0) {

                    sendETHToFee(address(this).balance);

                }

            }

        }else{

          _feeAddr1 = 0;

          _feeAddr2 = 0;

        }



        _tokenTransfer(from,to,amount);

    }
