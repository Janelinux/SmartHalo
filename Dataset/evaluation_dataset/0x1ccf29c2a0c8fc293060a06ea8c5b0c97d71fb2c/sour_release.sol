    function release(address payable account) public virtual {

        require(_shares[account] > 0, "PaymentSplitter: account has no shares");



        uint256 totalReceived = address(this).balance + totalReleased();

        uint256 payment = _pendingPayment(account, totalReceived, released(account));



        require(payment != 0, "PaymentSplitter: account is not due payment");



        _released[account] += payment;

        _totalReleased += payment;



        Address.sendValue(account, payment);

        emit PaymentReleased(account, payment);

    }
