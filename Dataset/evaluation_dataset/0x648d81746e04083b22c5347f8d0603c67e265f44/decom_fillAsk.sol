function fillAsk(address varg0, uint256 varg1, address varg2, uint256 varg3, address varg4) public payable { 

    require(msg.data.length - 4 >= 160);

    require(varg0 == varg0);

    require(varg2 == varg2);

    require(varg4 == varg4);

    require(1 == _setAskPrice, Error('REENTRANCY'));

    _setAskPrice = 2;

    require(address(_askForNFT[address(varg0)]), Error('fillAsk must be active ask'));

    require(address(_askForNFT[address(varg0)][0x2]) == varg2, Error('fillAsk _fillCurrency must match ask currency'));

    require(_askForNFT[varg0][3] == varg3, Error('fillAsk _fillAmount must match ask amount'));

    if (address(_askForNFT[address(varg0)][0x2])) {

        v0, v1 = address(_askForNFT[address(varg0)][0x2]).balanceOf(this).gas(msg.gas);

        require(v0); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(0xe242a9227814859784950d8b6a1af997ee67e7bd.code.size);

        v2 = 0xe242a9227814859784950d8b6a1af997ee67e7bd.safeTransferFrom(address(_askForNFT[address(varg0)][0x2]), msg.sender, this, _askForNFT[varg0][3]).gas(msg.gas);

        require(v2); // checks call status, propagates error data on error

        v3, v4 = address(_askForNFT[address(varg0)][0x2]).balanceOf(this).gas(msg.gas);

        require(v3); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v1 <= ~_askForNFT[varg0][3], Panic(17));

        require(v1 + _askForNFT[varg0][3] == v4, Error('_handleIncomingTransfer token transfer call did not transfer expected amount'));

        goto 0x6ffB0x1ec;

    } else {

        require(msg.value >= _askForNFT[varg0][3], Error('_handleIncomingTransfer msg value less than expected amount'));

    }

    v5 = v6 = _askForNFT[varg0][3];

    v5 = v7 = 0;

    v5 = v8 = address(_askForNFT[address(varg0)][0x2]);

    v9 = v10 = !v7;

    if (v7) {

        v9 = v7 > msg.gas;

    }

    if (v9) {

        v5 = v11 = msg.gas;

    }

    v12 = v13, v5 = this.fullExit(varg0, varg1, v6, address(v8)).gas(v5);

    if (v13) {

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v12 = 1;

    }

    if (v12) {

        goto 0x17ffB0x6ffB0x1ec;

    }

    v14, v15 = 0x5985760845cb50012bda0ec5fb8db37ffcd28d1c.getFeeAmount(this, v16).gas(msg.gas);

    require(v14); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    if (v15) {

        v17, v18, v19 = 0x5985760845cb50012bda0ec5fb8db37ffcd28d1c.moduleFeeSetting(this).gas(msg.gas);

        require(v17); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

        require(v18 == uint16(v18));

        require(v19 == address(v19));

        0x195d(50000, address(_name.length), v15, v19);

        v5 = v20 = _SafeSub(v16, v15);

    }

    if (address(v21)) {

        require(!(v5 & (uint16(_name.length >> 160) > ~0 / v5)), Panic(17));

        require(10000, Panic(18));

        0x195d(0, address(_name.length), v5 * uint16(_name.length >> 160) / 10000, v21);

        v5 = v22 = _SafeSub(v5, v5 * uint16(_name.length >> 160) / 10000);

    }

    0x195d(0, address(_name.length), v5, _setRoyaltyEngineAddress);

    require(0x40848b3fe4262c5778684d7273fec35e5071abb4.code.size);

    v23 = 0x40848b3fe4262c5778684d7273fec35e5071abb4.transferFrom(address(varg1), address(_setAskPrice), msg.sender, varg2).gas(msg.gas);

    require(v23); // checks call status, propagates error data on error

    emit ExchangeExecuted(address(_setAskPrice), msg.sender, address(varg1), varg2, 1, address(_name.length), 0, _askForNFT);

    emit AskFilled(address(varg1), varg2, msg.sender, address(v21), address(_setAskPrice), _setRoyaltyEngineAddress, address(_name.length), uint16(_name.length >> 160), _askForNFT);

    _askForNFT[address(varg1)] = ~0xffffffffffffffffffffffffffffffffffffffff & _askForNFT[address(varg1)];

    _askForNFT[address(varg1)][1] = ~0xffffffffffffffffffffffffffffffffffffffff & _askForNFT[address(varg1)][0x1];

    _askForNFT[address(varg1)][2] = ~0xffffffffffffffffffffffffffffffffffffffffffff & _askForNFT[address(varg1)][0x2];

    _askForNFT[address(varg1)][3] = 0;

    _setAskPrice = 1;

}
