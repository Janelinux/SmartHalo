function name() public payable { 

    v0 = 0x169b(_name.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x169b(_name.length);

    if (v4) {

        if (31 < v4) {

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _name.length >> 8 << 8;

        }

    }

    v6 = new array[](v1.length);

    v7 = 0;

    while (v7 < v1.length) {

        v6[v7] = v1[v7];

        v7 += 32;

    }

    if (v7 > v1.length) {

        v6[v1.length] = v7;

    }

    return v6;

}
