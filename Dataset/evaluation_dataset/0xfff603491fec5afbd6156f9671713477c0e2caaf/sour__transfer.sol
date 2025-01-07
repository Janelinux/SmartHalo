    function _transfer(address from, address to, uint256 amount) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        _feeAddr1 = 2;

        _feeAddr2 = 8;

        if (from != owner() && to != owner()) {

            require(!bots[from] && !bots[to]);

            if (from == uniswapV2Pair && to != address(uniswapV2Router) && ! _isExcludedFromFee[to] && cooldownEnabled) {

                // Cooldown

                require(amount <= _maxTxAmount);

                require(cooldown[to] < block.timestamp);

                cooldown[to] = block.timestamp + (30 seconds);

            }

            

            

            if (to == uniswapV2Pair && from != address(uniswapV2Router) && ! _isExcludedFromFee[from]) {

                _feeAddr1 = 3;

                _feeAddr2 = 3;

            }

            uint256 contractTokenBalance = balanceOf(address(this));

            if (!inSwap && from != uniswapV2Pair && swapEnabled) {

                swapTokensForEth(contractTokenBalance);

                uint256 contractETHBalance = address(this).balance;

                if(contractETHBalance > 0) {

                    sendETHToFee(address(this).balance);

                }

            }

        }

		

        _tokenTransfer(from,to,amount);

    }
