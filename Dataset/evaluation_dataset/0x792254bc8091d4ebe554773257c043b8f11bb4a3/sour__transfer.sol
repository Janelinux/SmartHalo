    function _transfer(address sender, address recipient, uint256 amount) private {

        preTxCheck(sender, recipient, amount);

        checkTradingAllowed(sender, recipient);

        checkMaxWallet(sender, recipient, amount); 

        swapbackCounters(sender, recipient);

        checkTxLimit(sender, recipient, amount); 

        swapBack(sender, recipient, amount);

        _balances[sender] = _balances[sender].sub(amount);

        uint256 amountReceived = shouldTakeFee(sender, recipient) ? takeFee(sender, recipient, amount) : amount;

        _balances[recipient] = _balances[recipient].add(amountReceived);

        emit Transfer(sender, recipient, amountReceived);

    }
