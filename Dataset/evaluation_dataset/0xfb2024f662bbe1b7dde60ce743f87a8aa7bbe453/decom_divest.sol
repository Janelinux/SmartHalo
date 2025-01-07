function divest(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(address(0x84ef1f1a7f14a237c4b1da8d13548123879fc3a9) == msg.sender, Error('BS: only vault'));

    v0 = 0x543();

    if (v0 >= varg0) {

        v1 = v2 = 0;

    } else {

        v1 = v3 = varg0 - v0;

        require(v3 <= varg0, Panic(17)); // arithmetic overflow or underflow

    }

    if (v1) {

        v4, v1 = address(0xbcca60bb61934080951369a648fb03df4f96263c).balanceOf(this).gas(msg.gas);

        require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        if (v1 < v1) {

            goto 0xaabB0x695B0x14d;

        }

        v5, v6 = address(0x7d2768de32b0b80b7a3454c06bdac94a69ddc7a9).withdraw(address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48), v1, this).gas(msg.gas);

        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    }

    v7 = 0x543();

    v8 = 0xc0b(v7, varg0);

    v9 = address(0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48).transfer(0x84ef1f1a7f14a237c4b1da8d13548123879fc3a9, v8).gas(msg.gas);

    require(((MEM[0] == 1) & (RETURNDATASIZE() > 31) | !RETURNDATASIZE()) & v9, Error('TRANSFER_FAILED'));

    return v8;

}
