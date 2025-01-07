function 0x276() private { 

    v0 = 0xd9a(array_3.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0xd9a(array_3.length);

    if (!v4) {

        return v1;

    } else if (31 < v4) {

        v5 = v6 = array_3.data;

        do {

            MEM[v2] = STORAGE[v5];

            v5 += 1;

            v2 += 32;

        } while (v3 + v4 <= v2);

        return v1;

    } else {

        MEM[v3] = array_3.length >> 8 << 8;

        return v1;

    }

}
