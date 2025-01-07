    function _transfer(address from, address to, uint amount) private {

        require(!_isBot[from]);

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        bool isBuy = false;

        if(from != owner() && to != owner()) {

            if(from == uniswapV2Pair && to != address(uniswapV2Router) && !_isExcludedFromFee[to]) {

                require(_tradingOpen, "Trading not yet enabled.");

                if((_launchedAt + (3 minutes)) > block.timestamp) {

                    require((amount + balanceOf(address(to))) <= _maxHeldTokens); 

                }

                isBuy = true;

            }

            if(!_inSwap && _tradingOpen && from != uniswapV2Pair) {

                uint contractTokenBalance = balanceOf(address(this));

                if(contractTokenBalance > 0) {

                    if(_useImpactFeeSetter) {

                        if(contractTokenBalance > (balanceOf(uniswapV2Pair) * _feeRate) / 100) {

                            contractTokenBalance = (balanceOf(uniswapV2Pair) * _feeRate) / 100;

                        }

                    }

                    uint burnAmount = contractTokenBalance/4;

                    contractTokenBalance -= burnAmount;

                    burnToken(burnAmount);

                    swapTokensForEth(contractTokenBalance);

                }

                uint contractETHBalance = address(this).balance;

                if(contractETHBalance > 0) {

                    sendETHToFee(address(this).balance);

                }

                isBuy = false;

            }

        }

        bool takeFee = true;

        if(_isExcludedFromFee[from] || _isExcludedFromFee[to]){

            takeFee = false;

        }

        _tokenTransfer(from,to,amount,takeFee,isBuy);

    }
