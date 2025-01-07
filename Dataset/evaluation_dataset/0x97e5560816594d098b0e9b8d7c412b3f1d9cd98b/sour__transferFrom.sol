    function _transferFrom(address sender, address recipient, uint256 amount) internal returns (bool) {

    

        if(inSwap){ return _basicTransfer(sender, recipient, amount); }



        if(!authorizations[sender] && !authorizations[recipient]){

            require(tradingOpen,"Trading not open yet");

        }



        if (!authorizations[sender] && !isWalletLimitExempt[sender] && !isWalletLimitExempt[recipient] && recipient != pair) {

            require((balanceOf[recipient] + amount) <= _maxWalletToken,"max wallet limit reached");

        }

    

        // Checks max transaction limit

        require((amount <= _maxTxAmount) || isTxLimitExempt[sender] || isTxLimitExempt[recipient], "Max TX Limit Exceeded");



        if(shouldSwapBack()){ swapBack(); }



        balanceOf[sender] = balanceOf[sender].sub(amount, "Insufficient Balance");



        uint256 amountReceived = (isFeeExempt[sender] || isFeeExempt[recipient]) ? amount : takeFee(sender, amount, recipient);



        balanceOf[recipient] = balanceOf[recipient].add(amountReceived);





        emit Transfer(sender, recipient, amountReceived);

        return true;

    }
