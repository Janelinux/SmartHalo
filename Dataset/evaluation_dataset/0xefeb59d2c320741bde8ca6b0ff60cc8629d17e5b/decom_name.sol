function name(bytes varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    require(4 + varg0 + varg0.length + 32 <= msg.data.length);

    v0 = 0x49a(_name.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x49a(_name.length);

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

    v7 = v8 = 0;

    while (v7 < v1.length) {

        v6[v7] = v1[v7];

        v7 += 32;

    }

    if (v7 > v1.length) {

        v6[v1.length] = 0;

    }

    return v6;

}
