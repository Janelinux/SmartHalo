        function _transfer(address sender, address recipient, uint256 amount) private {

            require(!_isBlacklisted[sender] && !_isBlacklisted[recipient], "This address is blacklisted");

            require(sender != address(0), "ERC20: transfer from the zero address");

            require(recipient != address(0), "ERC20: transfer to the zero address");

            require(amount > 0, "Transfer amount must be greater than zero");

            

            if(sender != owner() && recipient != owner())

                require(amount <= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");



           

            uint256 contractTokenBalance = balanceOf(address(this));

            

            if(contractTokenBalance >= _maxTxAmount)

            {

                contractTokenBalance = _maxTxAmount;

            }

            

            bool overMinTokenBalance = contractTokenBalance >= _numOfTokensToExchangeForMarketing;

            if (!inSwap && swapEnabled && overMinTokenBalance && sender != uniswapV2Pair) {

               

                swapTokensForEth(contractTokenBalance);

                

                uint256 contractETHBalance = address(this).balance;

                if(contractETHBalance > 0) {

                    sendETHToMarketing(address(this).balance);

                }

            }

            

        

            bool takeFee = true;

            

      

            if(_isExcludedFromFee[sender] || _isExcludedFromFee[recipient]){

                takeFee = false;

            }

            

      

            _tokenTransfer(sender,recipient,amount,takeFee);

        }
