function withdrawMyBalance() public nonPayable { 

    v0 = 0x219(msg.sender);

    require(v0 != 0, Error('Payment Splitter: You are a Mineros33 member, but you are not due payment'));

    v1 = _SafeAdd(_withdrawMyBalance[msg.sender], v0);

    _withdrawMyBalance[msg.sender] = v1;

    v2 = _SafeAdd(stor_1, v0);

    stor_1 = v2;

    require(this.balance >= v0, Error('Address: insufficient balance'));

    v3, v4 = msg.sender.call().value(v0).gas(msg.gas);

    if (RETURNDATASIZE() != 0) {

        v5 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v5.data, 0, RETURNDATASIZE());

    }

    require(v3, Error('Address: unable to send value, recipient may have reverted'));

    emit PaymentReleased(msg.sender, v0);

}
