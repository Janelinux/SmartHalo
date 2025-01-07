function symbol() public payable { 

    v0 = 0x885(_symbol.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x885(_symbol.length);

    if (v4) {

        if (31 < v4) {

            v5 = _symbol.data;

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _symbol.length >> 8 << 8;

        }

    }

    v6 = v7 = 0;

    v8 = new bytes[](v1.length);

    while (v6 < v1.length) {

        v8[v6] = v1[v6];

        v6 += 32;

    }

    if (v6 > v1.length) {

        v8[v1.length] = v7;

    }

    return v8;

}
