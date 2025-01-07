function explicitOwnershipsOf(uint256[] varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= uint64.max);

    require(4 + varg0 + 31 < msg.data.length);

    v0 = v1 = varg0.length;

    require(v1 <= uint64.max);

    require(4 + varg0 + (v1 << 5) + 32 <= msg.data.length);

    require(v1 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v2 = new uint256[](v1);

    if (v1) {

        v3 = v2.data;

        do {

            MEM[MEM[64]] = 0;

            MEM[MEM[64] + 32] = 0;

            MEM[MEM[64] + 64] = 0;

            MEM[MEM[64] + 96] = 0;

            MEM[v3] = MEM[64];

            v0 = v0 + ~0;

            v3 += 32;

        } while (!v0);

    }

    v4 = v5 = 0;

    while (v4 != v1) {

        require(v4 < v1, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        MEM[64] = MEM[64] + 128;

        MEM[MEM[64]] = 0;

        MEM[MEM[64] + 32] = 0;

        MEM[MEM[64] + 64] = 0;

        MEM[MEM[64] + 96] = 0;

        v6 = v7 = MEM[64];

        MEM[64] = v7 + 128;

        MEM[v7] = 0;

        MEM[v7 + 32] = 0;

        MEM[v7 + 64] = 0;

        MEM[v7 + 96] = 0;

        v8 = v9 = varg0[v4] < 1;

        if (varg0[v4] >= 1) {

            v8 = varg0[v4] >= _explicitOwnershipsOf;

        }

        if (!v8) {

            MEM[MEM[64]] = 0;

            MEM[MEM[64] + 32] = 0;

            MEM[MEM[64] + 64] = 0;

            MEM[MEM[64] + 96] = 0;

            v6 = MEM[64];

            MEM[v6] = address(map_4[varg0[v4]]);

            MEM[v6 + 32] = uint64(map_4[varg0[v4]] >> 160);

            MEM[v6 + 96] = map_4[varg0[v4]] >> 232;

            if (!bool(map_4[varg0[v4]] & 0x100000000000000000000000000000000000000000000000000000000)) {

                v6 = v10 = 0x2873(varg0[v4]);

            }

        }

        require(v4 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v2[v4] = v6;

        v4 += 1;

    }

    v11 = new uint256[](v2.length);

    v12 = v13 = 0;

    v14 = v15 = v2.data;

    v16 = v17 = v11.data;

    while (v12 < v2.length) {

        MEM[v16] = address(MEM[MEM[v14]]);

        MEM[v16 + 32] = uint64(MEM[MEM[v14] + 32]);

        MEM[v16 + 64] = bool(MEM[MEM[v14] + 64]);

        MEM[v16 + 96] = uint24(MEM[96 + MEM[v14]]);

        v14 += 32;

        v16 += 128;

        v12 += 1;

    }

    return v11;

}
