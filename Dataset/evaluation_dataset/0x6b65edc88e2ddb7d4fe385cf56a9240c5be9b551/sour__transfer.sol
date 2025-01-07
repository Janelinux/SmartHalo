    function _transfer(address sender, address recipient, uint256 amount) private returns (bool) {

        require(sender != address(0), "ERC20: transfer from the zero address");

        require(recipient != address(0), "ERC20: transfer to the zero address");

        require(!isSniper[sender], "Account is a Sniper");

        if(inSwapAndLiquify)

        { 

            return _basicTransfer(sender, recipient, amount); 

        }

        else

        {

            if(!isTXNoLimit[sender] && !isTXNoLimit[recipient]) {

                require(amount <= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");

            }

            uint256 contractTokenBalance = balanceOf(address(this));

            bool overMinimumTokenBalance = contractTokenBalance >= minimumTokensBeforeSwap;

            if (overMinimumTokenBalance && !inSwapAndLiquify && !isMarketPair[sender] && swapAndLiquifyEnabled) 

            {

                if(swapAndLiquifyByLimitOnly)

                    contractTokenBalance = minimumTokensBeforeSwap;

                swapAndLiquify(contractTokenBalance);    

            }

            _accBalances[sender] = _accBalances[sender].sub(amount, "Insufficient Balance");

            uint256 finalAmount = (isExcludedFromFee[sender] || isExcludedFromFee[recipient]) ? amount : takeFee(sender, recipient, amount);

            if(checkWalletLimit && !isWalletNoLimit[recipient])

            require(balanceOf(recipient).add(finalAmount) <= _walletMax);

            _accBalances[recipient] = _accBalances[recipient].add(finalAmount);

            emit Transfer(sender, recipient, finalAmount);

            return true;

        }

    }
