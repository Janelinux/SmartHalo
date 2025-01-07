function symbol() public payable { 

    v0 = new bytes[](_symbol.length);

    v1 = v2 = v0.data;

    if (_symbol.length) {

        if (31 < _symbol.length) {

            do {

                MEM[v1] = STORAGE[v3];

                v3 += 1;

                v1 += 32;

            } while (v2 + _symbol.length <= v1);

        } else {

            MEM[v2] = _symbol.length >> 8 << 8;

        }

    }

    v4 = new array[](v0.length);

    v5 = v6 = 0;

    while (v5 < v0.length) {

        v4[v5] = v0[v5];

        v5 = v5 + 32;

    }

    v7 = v8 = v0.length + v4.data;

    if (0x1f & v0.length) {

        MEM[v8 - (0x1f & v0.length)] = ~(256 ** (32 - (0x1f & v0.length)) - 1) & MEM[v8 - (0x1f & v0.length)];

    }

    return v4;

}
