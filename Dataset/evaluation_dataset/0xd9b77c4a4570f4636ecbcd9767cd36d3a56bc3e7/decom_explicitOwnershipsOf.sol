function explicitOwnershipsOf(uint256[] varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (~0x1f & (varg0.length << 5) + 32 + 31) < MEM[64]) | (MEM[64] + (~0x1f & (varg0.length << 5) + 32 + 31) > 0xffffffffffffffff)), Panic(65));

    v0 = v1 = MEM[64] + 32;

    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);

    v2 = v3 = 36 + varg0;

    while (v2 < 32 + (4 + varg0 + (varg0.length << 5))) {

        MEM[v0] = msg.data[v2];

        v2 += 32;

        v0 += 32;

    }

    require(v4 <= 0xffffffffffffffff, Panic(65));

    v5 = new uint256[](v4);

    if (v4) {

        v6 = v5.data;

        do {

            MEM[MEM[64]] = 0;

            MEM[MEM[64] + 32] = 0;

            MEM[MEM[64] + 64] = 0;

            MEM[MEM[64] + 96] = 0;

            MEM[v6] = MEM[64];

            v7 = v7 + ~0;

            v6 += 32;

        } while (!v7);

    }

    v8 = v9 = 0;

    while (v8 != v4) {

        if (v8 < varg0.length) {

            break;

        }

        require(v8 < varg0.length, Panic(50));

        MEM[MEM[64]] = 0;

        MEM[MEM[64] + 32] = 0;

        MEM[MEM[64] + 64] = 0;

        MEM[MEM[64] + 96] = 0;

        v10 = v11 = MEM[64];

        MEM[v11] = 0;

        MEM[v11 + 32] = 0;

        MEM[v11 + 64] = 0;

        MEM[v11 + 96] = 0;

        v12 = MEM[32 + (v8 << 5) + MEM[64]] < 1;

        if (MEM[32 + (v8 << 5) + MEM[64]] >= 1) {

            v12 = v13 = MEM[32 + (v8 << 5) + MEM[64]] >= _tokensOfOwnerIn;

        }

        if (!v12) {

            MEM[MEM[64]] = 0;

            MEM[MEM[64] + 32] = 0;

            MEM[MEM[64] + 64] = 0;

            MEM[MEM[64] + 96] = 0;

            v10 = v14 = new struct(4);

            v14.word0 = address(map_4[MEM[32 + (v8 << 5) + MEM[64]]]);

            v14.word1 = uint64(map_4[MEM[32 + (v8 << 5) + MEM[64]]] >> 160);

            v14.word2 = map_4[MEM[32 + (v8 << 5) + MEM[64]]] & 0x100000000000000000000000000000000000000000000000000000000;

            v14.word3 = map_4[MEM[32 + (v8 << 5) + MEM[64]]] >> 232;

            if (!v14.word2) {

                MEM[MEM[64]] = 0;

                MEM[MEM[64] + 32] = 0;

                MEM[MEM[64] + 64] = 0;

                MEM[MEM[64] + 96] = 0;

                v15 = 0x1616(MEM[32 + (v8 << 5) + MEM[64]]);

                v10 = new struct(4);

                v10.word0 = address(v15);

                v10.word1 = uint64(v15 >> 160);

                v10.word2 = v15 & 0x100000000000000000000000000000000000000000000000000000000;

                v10.word3 = v15 >> 232;

            }

        }

        require(v8 < v5.length, Panic(50));

        v5[v8] = v10;

        v8 += 1;

    }

    v16 = new array[](v5.length);

    v17 = v18 = 0;

    v19 = v20 = v5.data;

    v21 = v22 = v16.data;

    while (v17 < v5.length) {

        MEM[v21] = address(MEM[MEM[v19]]);

        MEM[v21 + 32] = uint64(MEM[MEM[v19] + 32]);

        MEM[v21 + 64] = MEM[MEM[v19] + 64];

        MEM[v21 + 96] = 0xffffff & MEM[96 + MEM[v19]];

        v19 += 32;

        v21 += 128;

        v17 += 1;

    }

    return v16;

}
