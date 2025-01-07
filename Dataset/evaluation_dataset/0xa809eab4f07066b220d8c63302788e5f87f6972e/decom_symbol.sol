function symbol() public payable { 

    v0 = 0xe9f(_symbol.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0xe9f(_symbol.length);

    if (v4) {

        if (31 < v4) {

            v5 = v6 = _symbol.data;

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _symbol.length >> 8 << 8;

        }

    }

    v7 = new array[](v1.length);

    v8 = v9 = 0;

    while (v8 < v1.length) {

        v7[v8] = v1[v8];

        v8 = v8 + 32;

    }

    if (v8 > v1.length) {

        v7[v1.length] = 0;

    }

    return v7;

}
