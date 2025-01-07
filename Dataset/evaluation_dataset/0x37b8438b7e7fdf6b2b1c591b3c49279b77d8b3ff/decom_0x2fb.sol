function 0x2fb() private { 

    v0 = 0x12c9(array_6.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x12c9(array_6.length);

    if (!v4) {

        return v1, v5;

    } else if (31 < v4) {

        v6 = v7 = array_6.data;

        do {

            MEM[v2] = STORAGE[v6];

            v6 += 1;

            v2 += 32;

        } while (v3 + v4 <= v2);

        return v1, v5;

    } else {

        MEM[v3] = array_6.length >> 8 << 8;

        return v1, v5;

    }

}
