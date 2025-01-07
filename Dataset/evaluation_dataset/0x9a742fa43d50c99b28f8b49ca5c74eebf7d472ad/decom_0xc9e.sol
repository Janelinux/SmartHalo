function 0xc9e(uint256 varg0) private { 

    v0 = 0x11f0(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = new bytes[](v2);

    v2 = (map_9[varg0].length & (!(map_9[varg0].length & 0x1) << 8) + ~0) >> 1;

    v3 = v4 = v1.data;

    if (v2) {

        if (31 < v2) {

            v5 = v6 = map_9[varg0].data;

            do {

                MEM[v3] = STORAGE[v5];

                v5 += 1;

                v3 += 32;

            } while (v4 + v2 <= v3);

        } else {

            MEM[v4] = map_9[varg0].length >> 8 << 8;

        }

    }

    if ((array_a.length & (!(array_a.length & 0x1) << 8) + ~0) >> 1) {

        if (!v1.length) {

            v7 = 0x14fb(varg0);

            v8 = v9 = 32 + MEM[64];

            if (((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1) {

                if (31 < ((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1) {

                    v8 = v10 = v9 + (((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1);

                    v11 = v12 = array_a.data;

                    do {

                        MEM[v8] = STORAGE[v11];

                        v11 += 1;

                        v8 += 32;

                    } while (v10 <= v8);

                } else {

                    MEM[v9] = array_a.length >> 8 << 8;

                    v8 = v13 = (((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1) + v9;

                }

            }

            v14 = v15 = v7.length;

            v16 = v17 = v7.data;

            while (v14 >= 32) {

                MEM[v8] = MEM[v16];

                v14 = v14 + ~31;

                v8 += 32;

                v16 += 32;

            }

            MEM[v8] = MEM[v16] & ~(256 ** (32 - v14) - 1) | MEM[v8] & 256 ** (32 - v14) - 1;

            MEM[MEM[64]] = v15 + v8 - MEM[64] - 32;

            return MEM[64];

        } else {

            v18 = v19 = 32 + MEM[64];

            if (((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1) {

                if (31 < ((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1) {

                    v18 = v20 = v19 + (((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1);

                    v21 = v22 = array_a.data;

                    do {

                        MEM[v18] = STORAGE[v21];

                        v21 += 1;

                        v18 += 32;

                    } while (v20 <= v18);

                } else {

                    MEM[v19] = array_a.length >> 8 << 8;

                    v18 = v23 = (((!(0x1 & array_a.length) << 8) - 1 & array_a.length) >> 1) + v19;

                }

            }

            v24 = v25 = v1.length;

            v26 = v27 = v1.data;

            while (v24 >= 32) {

                MEM[v18] = MEM[v26];

                v24 = v24 + ~31;

                v18 += 32;

                v26 += 32;

            }

            MEM[v18] = MEM[v26] & ~(256 ** (32 - v24) - 1) | MEM[v18] & 256 ** (32 - v24) - 1;

            MEM[MEM[64]] = v25 + v18 - MEM[64] - 32;

            return MEM[64];

        }

    } else {

        return v1;

    }

}
