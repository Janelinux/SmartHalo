function setUriSuffix(string varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(msg.data.length > 4 + varg0 + 31);

    require(varg0.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    require(!((MEM[64] + (63 + (~0x1f & varg0.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg0.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    require(varg0.data + varg0.length <= msg.data.length);

    CALLDATACOPY(v0.data, varg0.data, varg0.length);

    v0[varg0.length] = 0;

    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));

    require(v0.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v1 = 0x1c21(array_9.length);

    if (v1 > 31) {

        v2 = v3 = array_9.data;

        v2 = v4 = v3 + (v0.length + 31 >> 5);

        while (v2 < v3 + (v1 + 31 >> 5)) {

            STORAGE[v2] = 0;

            v2 += 1;

        }

        goto 0x1d0cB0x7f1B0x288;

    }

    v5 = v6 = 32;

    if (v0.length > 31 == 1) {

        v7 = v8 = 0;

        v9 = v10 = array_9.data;

        while (v7 < v0.length & ~0x1f) {

            STORAGE[v9] = MEM[v5 + MEM[64]];

            v5 += v6;

            v9 = v9 + 1;

            v7 += v6;

        }

        if (v0.length & ~0x1f < v0.length) {

            STORAGE[v9] = ~(~0 >> (0xf8 & v0.length << 3)) & MEM[v5 + MEM[64]];

        }

        array_9 = (v0.length << 1) + 1;

        goto 0x285aB0x288;

    } else {

        v11 = v12 = 0;

        if (v0.length) {

            v11 = MEM[v0.data];

        }

        array_9 = v0.length << 1 | ~(~0 >> (v0.length << 3)) & v11;

    }

}
