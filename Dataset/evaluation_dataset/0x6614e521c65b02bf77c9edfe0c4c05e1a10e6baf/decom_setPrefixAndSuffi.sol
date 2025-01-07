function setPrefixAndSuffi(string varg0, string varg1) public nonPayable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    require(4 + varg0 + varg0.length + 32 <= msg.data.length);

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= 0xffffffffffffffff);

    require(4 + varg1 + varg1.length + 32 <= msg.data.length);

    0x2214(0);

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    v0 = 0x33c9(_tokenURI.length);

    if (v0 > 31) {

        v1 = v2 = v3 + (varg0.length + 31 >> 5);

        while (v1 < v3 + (v0 + 31 >> 5)) {

            STORAGE[v1] = 0;

            v1 += 1;

        }

        goto 0x3474B0x1a64B0x6e1;

    }

    v4 = v5 = 0;

    if (varg0.length > 31 == 1) {

        while (v4 < varg0.length & ~0x1f) {

            STORAGE[v6] = varg0[v4];

            v4 += 32;

            v6 = v6 + 1;

            v4 += 32;

        }

        if (varg0.length & ~0x1f < varg0.length) {

            STORAGE[v6] = varg0[v4] & ~(~0 >> (varg0.length << 3 & 0xf8));

        }

        _tokenURI.length = (varg0.length << 1) + 1;

    } else {

        v7 = v8 = 0;

        if (varg0.length) {

            v7 = varg0[v5];

        }

        _tokenURI.length = varg0.length << 1 | ~(~0 >> (varg0.length << 3)) & v7;

    }

    require(varg1.length <= 0xffffffffffffffff, Panic(65));

    v9 = 0x33c9(array_1d.length);

    if (v9 > 31) {

        v10 = v11 = v12 + (varg1.length + 31 >> 5);

        while (v10 < v12 + (v9 + 31 >> 5)) {

            STORAGE[v10] = 0;

            v10 += 1;

        }

        goto 0x3474B0x1a71B0x6e1;

    }

    v13 = v14 = 0;

    if (varg1.length > 31 == 1) {

        while (v13 < varg1.length & ~0x1f) {

            STORAGE[v15] = varg1[v13];

            v13 += 32;

            v15 = v15 + 1;

            v13 += 32;

        }

        if (varg1.length & ~0x1f < varg1.length) {

            STORAGE[v15] = varg1[v13] & ~(~0 >> (varg1.length << 3 & 0xf8));

        }

        array_1d.length = (varg1.length << 1) + 1;

    } else {

        v16 = v17 = 0;

        if (varg1.length) {

            v16 = varg1[v14];

        }

        array_1d.length = varg1.length << 1 | ~(~0 >> (varg1.length << 3)) & v16;

    }

}
