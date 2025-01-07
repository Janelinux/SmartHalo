    function _transfer(address sender, address recipient, uint256 amount) private returns (bool) {



        require(sender != address(0), "ERC20: transfer from the zero address");

        require(recipient != address(0), "ERC20: transfer to the zero address");



        if(inSwapAndLiquify)

        { 

            return _basicTransfer(sender, recipient, amount); 

        }

        else

        {

            if(!checkTxLimitExcept[sender] && !checkTxLimitExcept[recipient]) {

                require(amount <= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");

            }            



            uint256 contractTokenBalance = balanceOf(address(this));

            bool overMinimumTokenBalance = contractTokenBalance >= minimumTokensBeforeSwap;

            

            if (overMinimumTokenBalance && !inSwapAndLiquify && !checkMarketPair[sender] && swapAndLiquifyEnabled) 

            {

                if(swapAndLiquifyByLimitOnly)

                    contractTokenBalance = minimumTokensBeforeSwap;

                swapAndLiquify(contractTokenBalance);    

            }



            _balances[sender] = _balances[sender].sub(amount, "Insufficient Balance");



            uint256 finalAmount = (checkExcludedFromFees[sender] || checkExcludedFromFees[recipient]) ? 

                                         amount : takeFee(sender, recipient, amount);



            if(checkWalletLimit && !checkWalletLimitExcept[recipient])

                require(balanceOf(recipient).add(finalAmount) <= _walletMax);



            _balances[recipient] = _balances[recipient].add(finalAmount);



            emit Transfer(sender, recipient, finalAmount);

            return true;

        }

    }
