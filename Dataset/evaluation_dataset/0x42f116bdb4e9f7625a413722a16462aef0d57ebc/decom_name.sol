function name() public payable { 

    v0 = v1 = _name.length >> 1;

    if (!(_name.length & 0x1)) {

        v0 = v2 = v1 & 0x7f;

    }

    require(_name.length & 0x1 != v0 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v3 = new bytes[](v0);

    v4 = v5 = v3.data;

    v6 = v7 = _name.length >> 1;

    if (!(_name.length & 0x1)) {

        v6 = v8 = v7 & 0x7f;

    }

    require(_name.length & 0x1 != v6 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (v6) {

        if (31 < v6) {

            v9 = v10 = _name.data;

            do {

                MEM[v4] = STORAGE[v9];

                v9 += 1;

                v4 += 32;

            } while (v5 + v6 <= v4);

        } else {

            MEM[v5] = _name.length >> 8 << 8;

        }

    }

    v11 = new bytes[](v3.length);

    v12 = v13 = 0;

    while (v12 < v3.length) {

        v11[v12] = v3[v12];

        v12 = v12 + 32;

    }

    if (v12 > v3.length) {

        v11[v3.length] = 0;

    }

    return v11;

}
