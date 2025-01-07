function 0xc6d(uint256 varg0) private { 

    require(address(map_2[varg0]), Error('ERC721URIStorage: URI query for nonexistent token'));

    v0 = 0x1808(map_6[varg0]);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x1808(map_6[varg0]);

    if (v4) {

        if (31 < v4) {

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = map_6[varg0] >> 8 << 8;

        }

    }

    if (0 != 0) {

        if (!v1.length) {

            require(address(map_2[varg0]), Error('ERC721Metadata: URI query for nonexistent token'));

            if (0 > 0) {

                v6 = 0x1099(varg0);

                v7 = v8 = 0;

                while (v7 < 0) {

                    MEM[v7 + (32 + MEM[64])] = MEM[v7 + (MEM[64] + 32)];

                    v7 += 32;

                }

                if (v7 > 0) {

                    MEM[32 + MEM[64]] = 0;

                    goto 0x1654B0x103eB0xdd3;

                }

                v9 = v10 = 0;

                while (v9 < v6.length) {

                    MEM[v9 + (32 + MEM[64] + 0)] = v6[v9];

                    v9 += 32;

                }

                if (v9 > v6.length) {

                    MEM[v6.length + (32 + MEM[64] + 0)] = 0;

                    goto 0x1668B0x103eB0xdd3;

                }

                v11 = v12 = MEM[64];

                MEM[v12] = v6.length + (32 + MEM[64] + 0) - v12 - 32;

                MEM[64] = v6.length + (32 + MEM[64] + 0);

            } else {

                v11 = v13 = new struct(1);

                v13.word0 = 0;

            }

            return v11;

        } else {

            v14 = v15 = 0;

            while (v14 < 0) {

                MEM[v14 + (32 + MEM[64])] = MEM[v14 + (MEM[64] + 32)];

                v14 += 32;

            }

            if (v14 > 0) {

                MEM[32 + MEM[64]] = 0;

                goto 0x1654B0xda9;

            }

            v16 = v17 = 0;

            while (v16 < v1.length) {

                MEM[v16 + (32 + MEM[64] + 0)] = v1[v16];

                v16 += 32;

            }

            if (v16 > v1.length) {

                MEM[v1.length + (32 + MEM[64] + 0)] = 0;

                goto 0x1668B0xda9;

            }

            MEM[MEM[64]] = v1.length + (32 + MEM[64] + 0) - MEM[64] - 32;

            MEM[64] = v1.length + (32 + MEM[64] + 0);

            return MEM[64];

        }

    } else {

        return v1;

    }

}
