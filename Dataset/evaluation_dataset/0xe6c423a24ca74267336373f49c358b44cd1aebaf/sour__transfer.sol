    function _transfer(address sender, address recipient, uint256 amount) private {

        

        checkTradingAllowed(sender, recipient);

        checkMaxWallet(sender, recipient, amount); 

        swapbackCounters(sender, recipient);

        

        initiatebackbuy(sender, recipient, amount);

        preTxCheck(sender, recipient, amount);

        checkTxLimit(sender, recipient, amount); 

        _balances[sender] = _balances[sender].sub(amount);

   

        uint256 transfertorec = shouldTakeFee(sender, recipient) ? takeFee(sender, recipient, amount) : amount;

        _balances[recipient] = _balances[recipient].add(transfertorec);

        emit Transfer(sender, recipient, shouldTakeFee(sender, recipient) ? takeFee(sender, recipient, amount) : amount);

    }
