    function withdrawMyBalance() public virtual {

        address payable account = payable(msg.sender);



        uint256 payment = getAddressBalance(account);



        require(payment != 0, "Payment Splitter: You are a Mineros33 member, but you are not due payment");



        _released[account] = _released[account] + payment;

        _totalReleased = _totalReleased + payment;



        Address.sendValue(account, payment);

        emit PaymentReleased(account, payment);

    }
