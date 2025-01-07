function withdraw() public nonPayable { 

    0x31e();

    require(_withdraw != 2, Error('ReentrancyGuard: reentrant call'));

    _withdraw = 2;

    require(100, Panic(18));

    v0 = _SafeMul(33, this.balance / 100);

    require(100, Panic(18));

    v1 = _SafeMul(33, this.balance / 100);

    v2 = _SafeSub(this.balance, v0);

    v3 = _SafeSub(v2, v1);

    v4, v5 = stor_2_0_19.call().value(v0).gas(msg.gas);

    if (RETURNDATASIZE() != 0) {

        v6 = new bytes[](RETURNDATASIZE());

        v5 = v6.data;

        RETURNDATACOPY(v5, 0, RETURNDATASIZE());

    }

    v7, v8 = stor_3_0_19.call().value(v1).gas(msg.gas);

    if (RETURNDATASIZE() != 0) {

        v9 = new bytes[](RETURNDATASIZE());

        v8 = v9.data;

        RETURNDATACOPY(v8, 0, RETURNDATASIZE());

    }

    v10, v11 = stor_4_0_19.call().value(v3).gas(msg.gas);

    if (RETURNDATASIZE() != 0) {

        v12 = new bytes[](RETURNDATASIZE());

        v11 = v12.data;

        RETURNDATACOPY(v11, 0, RETURNDATASIZE());

    }

    _withdraw = 1;

}
