function setData(string varg0, string varg1) public nonPayable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg0.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg0.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg0 + 32 + varg0.length <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg0 + 32, varg0.length);

    v0[varg0.length] = 0;

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg1.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg1.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg1 + 32 + varg1.length <= msg.data.length);

    CALLDATACOPY(v1.data, 4 + varg1 + 32, varg1.length);

    v1[varg1.length] = 0;

    require(msg.sender == _withdraw);

    require(v0.length <= 0xffffffffffffffff, Panic(65));

    v2 = 0x108a(_contractURI.length);

    if (v2 > 31) {

        v3 = v4 = v5 + (v0.length + 31 >> 5);

        while (v3 < v5 + (v2 + 31 >> 5)) {

            STORAGE[v3] = 0;

            v3 += 1;

        }

        goto 0x1138B0x72bB0x300;

    }

    v6 = v7 = 32;

    if (v0.length > 31 == 1) {

        v8 = v9 = 0;

        while (v8 < v0.length & ~0x1f) {

            STORAGE[v10] = MEM[v6 + MEM[64]];

            v6 += v7;

            v10 = v10 + 1;

            v8 += v7;

        }

        if (v0.length & ~0x1f < v0.length) {

            STORAGE[v10] = ~(~0 >> (0xf8 & v0.length << 3)) & MEM[v6 + MEM[64]];

        }

        _contractURI.length = (v0.length << 1) + 1;

        goto 0x737B0x300;

    } else {

        v11 = v12 = 0;

        if (v0.length) {

            v11 = MEM[v0.data];

        }

        _contractURI.length = v0.length << 1 | ~(~0 >> (v0.length << 3)) & v11;

    }

    require(v1.length <= 0xffffffffffffffff, Panic(65));

    v13 = 0x108a(_tokenURI.length);

    if (v13 > 31) {

        v14 = v15 = v16 + (v1.length + 31 >> 5);

        while (v14 < v16 + (v13 + 31 >> 5)) {

            STORAGE[v14] = 0;

            v14 += 1;

        }

        goto 0x1138B0x737B0x300;

    }

    v17 = v18 = 32;

    if (v1.length > 31 == 1) {

        v19 = v20 = 0;

        while (v19 < v1.length & ~0x1f) {

            STORAGE[v21] = MEM[v17 + MEM[64]];

            v17 += v18;

            v21 = v21 + 1;

            v19 += v18;

        }

        if (v1.length & ~0x1f < v1.length) {

            STORAGE[v21] = ~(~0 >> (0xf8 & v1.length << 3)) & MEM[v17 + MEM[64]];

        }

        _tokenURI.length = (v1.length << 1) + 1;

        goto 0x5700x714B0x300;

    } else {

        v22 = v23 = 0;

        if (v1.length) {

            v22 = MEM[v1.data];

        }

        _tokenURI.length = v1.length << 1 | ~(~0 >> (v1.length << 3)) & v22;

    }

}
