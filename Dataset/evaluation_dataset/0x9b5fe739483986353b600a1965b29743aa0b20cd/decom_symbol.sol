function symbol() public payable { 

    v0 = new bytes[]((_symbol.length & (!(_symbol.length & 0x1) << 8) - 1) >> 1);

    v1 = v2 = v0.data;

    if ((_symbol.length & (!(_symbol.length & 0x1) << 8) - 1) >> 1) {

        if (31 < (_symbol.length & (!(_symbol.length & 0x1) << 8) - 1) >> 1) {

            v3 = v4 = _symbol.data;

            do {

                MEM[v1] = STORAGE[v3];

                v3 += 1;

                v1 += 32;

            } while (v2 + ((_symbol.length & (!(_symbol.length & 0x1) << 8) - 1) >> 1) <= v1);

        } else {

            MEM[v2] = _symbol.length >> 8 << 8;

        }

    }

    v5 = new bytes[](v0.length);

    v6 = 0;

    while (v6 < v0.length) {

        v5[v6] = v0[v6];

        v6 += 32;

    }

    v7 = v0.length + v5.data;

    if (0x1f & v0.length) {

        MEM[v7 - (0x1f & v0.length)] = ~((uint8.max + 1) ** (32 - (0x1f & v0.length)) - 1) & MEM[v7 - (0x1f & v0.length)];

    }

    return v5;

}
