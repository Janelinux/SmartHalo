    function _transfer(

        address from,

        address to,

        uint256 amount

    ) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");



        if (from != owner() && to != owner()) {

            if (cooldownEnabled) {

                if (

                    from != address(this) &&

                    to != address(this) &&

                    from != address(uniswapV2Router) &&

                    to != address(uniswapV2Router)

                ) {

                    require(

                        _msgSender() == address(uniswapV2Router) ||

                            _msgSender() == uniswapV2Pair,

                        "ERR: Uniswap only"

                    );

                }

            }

            require(amount <= _maxTxAmount);

            require(!bots[from] && !bots[to]);

            if (

                from == uniswapV2Pair &&

                to != address(uniswapV2Router) &&

                !_isExcludedFromFee[to] &&

                cooldownEnabled

            ) {

                require(cooldown[to] < block.timestamp);

                cooldown[to] = block.timestamp + (60 seconds);

            }

            uint256 contractTokenBalance = balanceOf(address(this));

            if (!inSwap && from != uniswapV2Pair && swapEnabled) {

                swapTokensForEth(contractTokenBalance);

                uint256 contractETHBalance = address(this).balance;

                if (contractETHBalance > 0) {

                    sendETHToFee(address(this).balance);

                }

            }

        }

        bool takeFee = true;



        if (_isExcludedFromFee[from] || _isExcludedFromFee[to]) {

            takeFee = false;

        }



        _tokenTransfer(from, to, amount, takeFee);

    }
