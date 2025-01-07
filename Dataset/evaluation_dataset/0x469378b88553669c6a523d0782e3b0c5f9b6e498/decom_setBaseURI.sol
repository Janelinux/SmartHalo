function setBaseURI(string varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    require(4 + varg0 + varg0.length + 32 <= msg.data.length);

    v0 = v1 = msg.sender == _owner;

    v0 = v2 = 0x1c68(msg.sender);

    require(v0, Error('Team: caller is not the owner or in Team.'));

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    v3 = 0x3931(__baseTokenURI.length);

    if (v3 > 31) {

        v4 = v5 = v6 + (varg0.length + 31 >> 5);

        while (v4 < v6 + (v3 + 31 >> 5)) {

            STORAGE[v4] = 0;

            v4 += 1;

        }

        goto 0x3ab6B0x17c7B0x6e3;

    }

    v7 = v8 = 0;

    if (varg0.length > 31 == 1) {

        while (v7 < varg0.length & ~0x1f) {

            STORAGE[v9] = varg0[v7];

            v7 += 32;

            v9 = v9 + 1;

            v7 += 32;

        }

        if (varg0.length & ~0x1f < varg0.length) {

            STORAGE[v9] = varg0[v7] & ~(~0 >> (varg0.length << 3 & 0xf8));

        }

        __baseTokenURI.length = (varg0.length << 1) + 1;

        goto 0x17d40x1784B0x6e3;

    } else {

        v10 = v11 = 0;

        if (varg0.length) {

            v10 = varg0[v8];

        }

        __baseTokenURI.length = varg0.length << 1 | ~(~0 >> (varg0.length << 3)) & v10;

    }

}
