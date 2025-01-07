function setBaseURI(string varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(msg.data.length > 4 + varg0 + 31);

    require(varg0.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](varg0.length);

    require(!((v0 + (63 + (~0x1f & varg0.length + 31) & ~0x1f) < v0) | (v0 + (63 + (~0x1f & varg0.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    require(varg0.data + varg0.length <= msg.data.length);

    CALLDATACOPY(v0.data, varg0.data, varg0.length);

    v0[varg0.length] = 0;

    0xc26();

    require(v0.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v1 = 0x17b5(_setBaseURI.length);

    if (v1 > 31) {

        v2 = v3 = _setBaseURI.data;

        v2 = v4 = v3 + (v0.length + 31 >> 5);

        while (v2 < v3 + (v1 + 31 >> 5)) {

            STORAGE[v2] = 0;

            v2 += 1;

        }

        goto 0x1910B0x57cB0x241;

    }

    v5 = v6 = 32;

    if (v0.length > 31 == 1) {

        v7 = v8 = 0;

        v9 = v10 = _setBaseURI.data;

        while (v7 < v0.length & ~0x1f) {

            STORAGE[v9] = MEM[v5 + v0];

            v5 += v6;

            v9 = v9 + 1;

            v7 += v6;

        }

        if (v0.length & ~0x1f < v0.length) {

            STORAGE[v9] = ~(~0 >> (0xf8 & v0.length << 3)) & MEM[v5 + v0];

        }

        _setBaseURI = (v0.length << 1) + 1;

        goto 0x2365B0x241;

    } else {

        v11 = v12 = 0;

        if (v0.length) {

            v11 = MEM[v0.data];

        }

        _setBaseURI = v0.length << 1 | ~(~0 >> (v0.length << 3)) & v11;

    }

}
