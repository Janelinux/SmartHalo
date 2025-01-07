function getBuyAmount(address varg0, address varg1, uint256 varg2, uint256 varg3) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 128);

    require(varg0 == varg0);

    require(varg1 == varg1);

    0x8dd(varg2);

    0x8dd(varg3);

    require(0x818e6fecd516ecc3849daf6845e3ec868087b755.code.size);

    v0, v1, v2 = 0x818e6fecd516ecc3849daf6845e3ec868087b755.getExpectedRate(varg1, varg0, varg2).gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

    0x8dd(v1);

    0x8dd(v2);

    if (varg0 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {

        v3 = v4 = 18;

    } else {

        require(varg0.code.size);

        v5, v3 = varg0.decimals().gas(msg.gas);

        require(v5); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x8dd(v3);

    }

    if (varg1 == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee) {

        v6 = v7 = 18;

    } else {

        require(varg1.code.size);

        v8, v6 = varg1.decimals().gas(msg.gas);

        require(v8); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        0x8dd(v6);

    }

    require(0xde0b6b3a7640000 - varg3 <= 0xde0b6b3a7640000, Error('sub-overflow'));

    v9 = 0x449(0xde0b6b3a7640000 - varg3, v1);

    v10 = 0x4bd(10 ** (18 - v6), varg2);

    v11 = 0x449(v1, v10);

    assert(10 ** (18 - v3));

    return v11 / 10 ** (18 - v3), v9;

}
