    function _transfer(address from, address to, uint256 amount) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        require(amount <= balanceOf(from),"You are trying to transfer more than your balance");    

        require(tradingOpen || _isExcludedFromFee[from] || _isExcludedFromFee[to], "Trading not enabled yet");



        if (from == uniswapV2Pair && to != address(uniswapV2Router) && ! _isExcludedFromFee[to]) {

                require(amount <= maxTxAmount, "Exceeds the _maxTxAmount.");

                require(balanceOf(to) + amount <= maxWalletAmount, "Exceeds the maxWalletSize.");

        }



        uint256 contractTokenBalance = balanceOf(address(this));

            if (!inSwap && from != uniswapV2Pair && swapEnabled && contractTokenBalance>0) {

                swapTokensForEth(contractTokenBalance);

                uint256 contractETHBalance = address(this).balance;

                if(contractETHBalance > 0) {

                    sendETHToFee(address(this).balance);

                }

            }



        _tokenTransfer(from, to, amount, !(_isExcludedFromFee[from] || _isExcludedFromFee[to]));

    }
