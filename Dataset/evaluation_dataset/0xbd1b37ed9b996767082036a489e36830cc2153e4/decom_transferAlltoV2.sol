function transferAlltoV2(address varg0, address varg1, uint256[] varg2) public nonPayable { 

    require(msg.data.length - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 <= 0xffffffffffffffff);

    require(4 + varg2 + 31 < msg.data.length);

    require(varg2.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + ((varg2.length << 5) + 63 & ~0x1f) > 0xffffffffffffffff) | (MEM[64] + ((varg2.length << 5) + 63 & ~0x1f) < MEM[64])), Panic(65));

    MEM[64] = MEM[64] + ((varg2.length << 5) + 63 & ~0x1f);

    v0 = v1 = MEM[64] + 32;

    require(32 + ((varg2.length << 5) + (4 + varg2)) <= msg.data.length);

    v2 = v3 = 36 + varg2;

    while (v2 < 32 + ((varg2.length << 5) + (4 + varg2))) {

        MEM[v0] = msg.data[v2];

        v2 += 32;

        v0 += 32;

    }

    v4 = v5 = tx.origin == address(_deployer);

    if (v5) {

        v4 = msg.sender == address(_isInitialized);

    }

    require(v4, Error('only deployer'));

    v6 = v7 = 0;

    while (v6 < varg2.length) {

        if (v6 < varg2.length) {

            break;

        }

        require(v6 < varg2.length, Panic(50));

        require(varg0.code.size);

        v8 = varg0.safeTransferFrom(address(this), varg1, MEM[(v6 << 5) + MEM[64] + 32]).gas(msg.gas);

        require(v8); // checks call status, propagates error data on error

        require(v6 + 1, Panic(17));

        v6 += 1;

    }

}
