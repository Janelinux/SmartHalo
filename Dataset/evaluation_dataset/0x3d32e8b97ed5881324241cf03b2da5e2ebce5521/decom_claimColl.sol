function claimColl(address varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(msg.sender == _borrowerOperationsAddress, Error('CollSurplusPool: Caller is not Borrower Operations'));

    require(_getCollateral[varg0], Error('CollSurplusPool: No collateral available to claim'));

    _getCollateral[varg0] = 0;

    emit CollBalanceUpdated(varg0, 0);

    if (_getCollateral[varg0] <= _getETH) {

        _getETH = _getETH - _getCollateral[varg0];

        emit EtherSent(varg0, _getCollateral[varg0]);

        v0, v1 = varg0.call().value(_getCollateral[varg0]).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v2 = new bytes[](RETURNDATASIZE());

            v1 = v2.data;

            RETURNDATACOPY(v1, 0, RETURNDATASIZE());

        }

        require(v0, Error('CollSurplusPool: sending ETH failed'));

        exit;

    } else {

        v3 = new array[](v4.length);

        v5 = v6 = 0;

        while (v5 < v4.length) {

            v3[v5] = v4[v5];

            v5 += 32;

        }

        if (30) {

            MEM[v3.data] = ~0xffff & 'SafeMath: subtraction overflow';

        }

        revert(Error(v3));

    }

}
