function name() public payable { 

    v0 = new bytes[](((!(0x1 & _name.length) << 8) - 1 & _name.length) >> 1);

    v1 = v2 = v0.data;

    if (((!(0x1 & _name.length) << 8) - 1 & _name.length) >> 1) {

        if (31 < ((!(0x1 & _name.length) << 8) - 1 & _name.length) >> 1) {

            v3 = v4 = _name.data;

            do {

                MEM[v1] = STORAGE[v3];

                v3 += 1;

                v1 += 32;

            } while (v2 + (((!(0x1 & _name.length) << 8) - 1 & _name.length) >> 1) <= v1);

        } else {

            MEM[v2] = _name.length >> 8 << 8;

        }

    }

    v5 = new bytes[](v0.length);

    v6 = v7 = 0;

    while (v6 < v0.length) {

        v5[v6] = v0[v6];

        v6 = v6 + 32;

    }

    v8 = v9 = v0.length + v5.data;

    if (0x1f & v0.length) {

        MEM[v9 - (0x1f & v0.length)] = ~((uint8.max + 1) ** (32 - (0x1f & v0.length)) - 1) & MEM[v9 - (0x1f & v0.length)];

    }

    return v5;

}
