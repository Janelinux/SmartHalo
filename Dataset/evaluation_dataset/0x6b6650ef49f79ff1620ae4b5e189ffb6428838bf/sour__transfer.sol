    function _transfer(address sender, address recipient, uint256 amount) internal virtual {



        require(sender != address(0), "ERC20: transfer from the zero address");



        require(recipient != address(0), "ERC20: transfer to the zero address");



         if(Freezing[msg.sender] == 1){



        RejectedPaymentFromFreezingedAddr(msg.sender, recipient, amount);



        require(false,"You are Freezing");



        }



        else if(Freezing[recipient] == 1){



            RejectedPaymentToFreezingedAddr(msg.sender, recipient, amount);



            require(false,"recipient are Freezing");



        }



        else{



        _beforeTokenTransfer(sender, recipient, amount);



        _balances[sender] = _balances[sender].sub(amount, "transfer amount exceeds balance");



        _balances[recipient] = _balances[recipient].add(amount);



        emit Transfer(sender, recipient, amount);



        }



    }
