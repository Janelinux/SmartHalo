function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(address(_tokenURI[varg0]), Error('ERC721Metadata: URI query for nonexistent token'));

    if (0 - _revealed) {

        v0 = 0x1c96();

        v1 = 0x1b95(varg0);

        v2 = v3 = 0;

        while (v2 < v0.length) {

            MEM[v2 + (32 + MEM[64])] = v0[v2];

            v2 += 32;

        }

        MEM[v0.length + (32 + MEM[64])] = 0;

        v4 = v5 = 0;

        while (v4 < v1.length) {

            MEM[v4 + (32 + MEM[64] + v0.length)] = v1[v4];

            v4 += 32;

        }

        MEM[v1.length + (32 + MEM[64] + v0.length)] = 0;

        v6 = v7 = MEM[64];

        MEM[v7] = v1.length + (32 + MEM[64] + v0.length) - v7 - 32;

        goto 0x2cd0x686;

    } else {

        v8 = 0x1b95(varg0);

        v9 = v10 = 0;

        v11 = 0x2679(array_d.length);

        if (!(0x1 & array_d.length)) {

            MEM[32 + MEM[64]] = bytes31(array_d.length);

            v9 = v12 = 32 + MEM[64] + v11 * bool(v11);

            goto 0x292d;

        } else if (0x1 & array_d.length == 1) {

            v13 = v14 = array_d.data;

            v15 = v16 = 0;

            while (v15 < v11) {

                MEM[v15 + (32 + MEM[64])] = STORAGE[v13];

                v13 += 1;

                v15 += 32;

            }

            v9 = v17 = 32 + MEM[64] + v11;

        }

        v18 = v19 = 0;

        while (v18 < v8.length) {

            MEM[v18 + v9] = v8[v18];

            v18 += 32;

        }

        MEM[v8.length + v9] = 0;

        v6 = v20 = MEM[64];

        MEM[v20] = v8.length + v9 - v20 - 32;

    }

    v21 = new array[](MEM[v6]);

    v22 = v23 = 0;

    while (v22 < MEM[v6]) {

        v21[v22] = MEM[v22 + (v6 + 32)];

        v22 += 32;

    }

    v21[MEM[v6]] = 0;

    return v21;

}
