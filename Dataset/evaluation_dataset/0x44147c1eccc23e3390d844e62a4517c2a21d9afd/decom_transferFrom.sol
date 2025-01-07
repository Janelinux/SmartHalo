function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 == varg2);

    v0 = v1 = 0;

    v2 = v3 = !uint8(_isExcludedFromFee[address(address(varg0))]);

    if (!bool(uint8(_isExcludedFromFee[address(address(varg0))]))) {

        v2 = v4 = !uint8(_isExcludedFromFee[address(address(varg1))]);

    }

    if (v2) {

        v5 = 0x139d(varg2);

        v6 = v7 = _SafeSub(varg2, v5);

        v8 = _SafeMul(varg2, 5);

        v0 = _SafeDiv(v8, 100);

        v0 = v9 = 0x1187(varg1);

    }

    0x1d8b(v6, varg1, varg0);

    v10 = _SafeSub(_allowance[varg0][msg.sender], varg2);

    v11 = _SafeAdd(v10, v6);

    0x1a6c(v11, msg.sender, varg0);

    v12 = v13 = v0 > 0;

    if (v0 <= 0) {

        v12 = v14 = v0 > 0;

    }

    if (v12) {

        v15 = _SafeAdd(v0, v0);

        0x1d8b(v15, _marketingWallet, varg1);

    }

    v16 = 0x17d0(varg1);

    _lastBalance[varg1] = v16;

    return bool(1);

}
