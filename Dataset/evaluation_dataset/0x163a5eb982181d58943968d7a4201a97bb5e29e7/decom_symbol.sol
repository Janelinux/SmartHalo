function symbol() public payable { 

    v0 = 0xf4b(_symbol.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0xf4b(_symbol.length);

    if (v4) {

        if (31 < v4) {

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _symbol.length >> 8 << 8;

        }

    }

    v6 = new array[](v1.length);

    v7 = v8 = 0;

    while (v7 < v1.length) {

        v6[v7] = v1[v7];

        v7 = v7 + 32;

    }

    if (v7 > v1.length) {

        v6[v1.length] = 0;

    }

    return v6;

}
