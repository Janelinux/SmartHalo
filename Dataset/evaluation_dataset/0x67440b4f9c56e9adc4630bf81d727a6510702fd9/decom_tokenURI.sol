function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    v0 = 0x13e5(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = 0x2326(_baseURI.length);

    v2 = new bytes[](v1);

    v3 = v4 = v2.data;

    v5 = 0x2326(_baseURI.length);

    if (v5) {

        if (31 < v5) {

            v6 = v7 = _baseURI.data;

            do {

                MEM[v3] = STORAGE[v6];

                v6 += 1;

                v3 += 32;

            } while (v4 + v5 <= v3);

        } else {

            MEM[v4] = _baseURI.length >> 8 << 8;

        }

    }

    if (v2.length > 0) {

        v8 = v9 = 0;

        if (varg0 >= 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000) {

            v10 = v11 = varg0 / 0x184f03e93ff9f4daa797ed6e38ed64bf6a1f010000000000000000;

            v8 = v12 = 64;

        }

        if (v10 >= 0x4ee2d6d415b85acef8100000000) {

            v10 = v13 = v10 / 0x4ee2d6d415b85acef8100000000;

            v8 = v14 = v8 + 32;

        }

        if (v10 >= 0x2386f26fc10000) {

            v10 = v15 = v10 / 0x2386f26fc10000;

            v8 = v16 = v8 + 16;

        }

        if (v10 >= 0x5f5e100) {

            v10 = v17 = v10 / 0x5f5e100;

            v8 = v18 = v8 + 8;

        }

        if (v10 >= 10000) {

            v10 = v19 = v10 / 10000;

            v8 = v20 = v8 + 4;

        }

        if (v10 >= 100) {

            v10 = v21 = v10 / 100;

            v8 = v22 = v8 + 2;

        }

        if (v10 >= 10) {

            v8 = v23 = v8 + 1;

        }

        require(v8 + 1 <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

        v24 = new bytes[](v8 + 1);

        if (v8 + 1) {

        }

        v25 = v26 = v24 + (32 + (v8 + 1));

        while (1) {

            v25 = v25 - 1;

            MEM8[v25] = (byte('0123456789abcdef', v10 % 10)) & 0xFF;

            v10 = v10 / 10;

            if (v10 - 0) {

                break;

            }

        }

        v27 = v28 = 0;

        while (v27 < v2.length) {

            MEM[32 + MEM[64] + v27] = v2[v27];

            v27 = v27 + 32;

        }

        MEM[32 + MEM[64] + v2.length] = 0;

        v29 = v30 = 0;

        while (v29 < v24.length) {

            MEM[32 + MEM[64] + v2.length + v29] = v24[v29];

            v29 = v29 + 32;

        }

        MEM[32 + MEM[64] + v2.length + v24.length] = 0;

        MEM[32 + MEM[64] + v2.length + v24.length + 0] = '.json';

        v31 = MEM[64];

        MEM[v31] = 32 + MEM[64] + v2.length + v24.length + 5 - v31 - 32;

        MEM[64] = 32 + MEM[64] + v2.length + v24.length + 5;

    } else {

        v31 = v32 = MEM[64];

        MEM[v32] = 0;

    }

    v33 = new array[](MEM[v31]);

    v34 = v35 = 0;

    while (v34 < MEM[v31]) {

        v33[v34] = MEM[v31 + 32 + v34];

        v34 = v34 + 32;

    }

    v33[MEM[v31]] = 0;

    return v33;

}
