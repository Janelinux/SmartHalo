function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    require(address(owner_2[varg0]) != address(0x0), Error('ERC721Metadata: URI query for nonexistent token'));

    if (_revealed - bool(0)) {

        v0 = 0x2c00();

        if (v0.length > 0) {

            v1 = v2 = 0;

            if (varg0 >= 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000) {

                v3 = v4 = varg0 / 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000;

                v1 = v5 = 64;

            }

            if (v3 >= 0x4ee2d6d415b85acef8100000000) {

                v3 = v6 = v3 / 0x4ee2d6d415b85acef8100000000;

                v1 = v7 = v1 + 32;

            }

            if (v3 >= 0x2386f26fc10000) {

                v3 = v8 = v3 / 0x2386f26fc10000;

                v1 = v9 = v1 + 16;

            }

            if (v3 >= 0x5f5e100) {

                v3 = v10 = v3 / 0x5f5e100;

                v1 = v11 = v1 + 8;

            }

            if (v3 >= 10000) {

                v3 = v12 = v3 / 10000;

                v1 = v13 = v1 + 4;

            }

            if (v3 >= 100) {

                v3 = v14 = v3 / 100;

                v1 = v15 = v1 + 2;

            }

            if (v3 >= 10) {

                v1 = v16 = v1 + 1;

            }

            require(v1 + 1 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

            v17 = new bytes[](v1 + 1);

            if (v1 + 1) {

                CALLDATACOPY(v17.data, msg.data.length, v1 + 1);

            }

            v18 = v19 = v17 + (32 + (v1 + 1));

            while (1) {

                v18 = v18 - 1;

                MEM8[v18] = (byte('0123456789abcdef', v3 % 10)) & 0xFF;

                v3 = v3 / 10;

                if (v3 - 0) {

                    break;

                }

            }

            v20 = v21 = 0;

            while (v20 < v0.length) {

                MEM[32 + MEM[64] + v20] = v0[v20];

                v20 = v20 + 32;

            }

            MEM[32 + MEM[64] + v0.length] = 0;

            v22 = v23 = 0;

            while (v22 < v17.length) {

                MEM[32 + MEM[64] + v0.length + v22] = v17[v22];

                v22 = v22 + 32;

            }

            MEM[32 + MEM[64] + v0.length + v17.length] = 0;

            v24 = 0x4b7b(11, 32 + MEM[64] + v0.length + v17.length);

            v25 = MEM[64];

            MEM[v25] = v24 - v25 - 32;

            MEM[64] = v24;

        } else {

            v25 = v26 = MEM[64];

            MEM[v26] = 0;

        }

    } else {

        v27 = 0x3d42(_tokenURI.length);

        v25 = v28 = new bytes[](v27);

        v29 = v30 = v28.data;

        v31 = 0x3d42(_tokenURI.length);

        if (v31) {

            if (31 < v31) {

                v32 = v33 = _tokenURI.data;

                do {

                    MEM[v29] = STORAGE[v32];

                    v32 += 1;

                    v29 += 32;

                } while (v30 + v31 <= v29);

            } else {

                MEM[v30] = _tokenURI.length >> 8 << 8;

            }

        }

    }

    v34 = new array[](MEM[v25]);

    v35 = v36 = 0;

    while (v35 < MEM[v25]) {

        v34[v35] = MEM[v25 + 32 + v35];

        v35 = v35 + 32;

    }

    v34[MEM[v25]] = 0;

    return v34;

}
