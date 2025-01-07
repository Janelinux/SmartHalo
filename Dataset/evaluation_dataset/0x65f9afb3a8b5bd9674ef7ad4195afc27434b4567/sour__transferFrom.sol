    function _transferFrom(

        address sender,

        address recipient,

        uint256 amount

    ) internal returns (bool) {

        if (inSwap) {

            return _basicTransfer(sender, recipient, amount);

        }



        if (recipient != pair && recipient != DEAD) {

            require(

                isTxLimitExempt[recipient] ||

                    _balances[recipient] + amount <= _maxWalletAmount,

                "Transfer amount exceeds the bag size."

            );

        }



        if (shouldSwapBack(sender, recipient)) {

            swapBack();

        }



        _balances[sender] = _balances[sender].sub(

            amount,

            "Insufficient Balance"

        );



        uint256 amountReceived = shouldTakeFee(sender)

            ? takeFee(sender, amount)

            : amount;

        _balances[recipient] = _balances[recipient].add(amountReceived);



        emit Transfer(sender, recipient, amountReceived);

        return true;

    }
