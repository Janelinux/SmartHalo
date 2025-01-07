function getNFTsOfUser(address varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 == varg0);

    v0 = v1 = 0x12c7(varg0);

    require(v1 <= 0xffffffffffffffff, Panic(65));

    v2 = new uint256[](v1);

    if (v1) {

        v3 = v2.data;

        do {

            MEM[MEM[64]] = 0;

            MEM[32 + MEM[64]] = 0;

            MEM[64 + MEM[64]] = 0;

            MEM[96 + MEM[64]] = 0;

            MEM[128 + MEM[64]] = 96;

            MEM[160 + MEM[64]] = 0;

            MEM[192 + MEM[64]] = 0;

            MEM[v3] = MEM[64];

            v3 += 32;

            v0 = v0 - 1;

        } while (!v0);

    }

    v4 = v5 = 0;

    v6 = v7 = 1;

    while (v6 <= __tokenIds) {

        v8 = 0x1267(v6);

        if (address(v8) == varg0) {

            require(_typesOfAllNFTs[v6] < _getNFTPrice.length, Panic(50));

            MEM[MEM[64]] = STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 0];

            MEM[32 + MEM[64]] = STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 1];

            MEM[64 + MEM[64]] = STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 2];

            MEM[96 + MEM[64]] = 0xff & STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 3];

            v9 = 0x2b42(STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 4]);

            v10 = new bytes[](v9);

            v11 = v12 = v10.data;

            v13 = 0x2b42(STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 4]);

            if (v13) {

                if (31 < v13) {

                    do {

                        MEM[v11] = STORAGE[v14];

                        v14 += 1;

                        v11 += 32;

                    } while (v12 + v13 <= v11);

                } else {

                    MEM[v12] = STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 4] >> 8 << 8;

                }

            }

            MEM[128 + MEM[64]] = v10;

            MEM[160 + MEM[64]] = STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 5];

            MEM[192 + MEM[64]] = STORAGE[7 * _typesOfAllNFTs[v6] + keccak256(12) + 6];

            require(v4 < v2.length, Panic(50));

            v2[v4] = MEM[64];

            v4 = 0x2b27(v4);

        }

        if (v4 != v1) {

            v6 = 0x2b27(v6);

            continue;

        } else {

            goto 0x60f0x17b6B0x498;

        }

    }

    v15 = new array[](v2.length);

    v16 = v15.data;

    v17 = v18 = MEM[64] + (v2.length << 5) + 64;

    v19 = v2.data;

    v20 = 0;

    while (v20 < v2.length) {

        MEM[v16] = v17 - MEM[64] + ~63;

        MEM[v17] = MEM[MEM[v19]];

        MEM[v17 + 32] = MEM[MEM[v19] + 32];

        MEM[v17 + 64] = MEM[MEM[v19] + 64];

        MEM[v17 + 96] = MEM[MEM[v19] + 96];

        MEM[v17 + 128] = 224;

        MEM[v17 + 224] = MEM[MEM[MEM[v19] + 128]];

        v21 = v22 = 0;

        while (v21 < MEM[MEM[MEM[v19] + 128]]) {

            MEM[v21 + (v17 + 224 + 32)] = MEM[v21 + (MEM[MEM[v19] + 128] + 32)];

            v21 += 32;

        }

        if (v21 > MEM[MEM[MEM[v19] + 128]]) {

            MEM[MEM[MEM[MEM[v19] + 128]] + (v17 + 224 + 32)] = 0;

            goto 0x26e3B0x2a4bB0x47d0x48a;

        }

        v17 = 32 + ((~0x1f & 31 + MEM[MEM[MEM[v19] + 128]]) + (v17 + 224));

        MEM[v17 + 160] = MEM[160 + MEM[v19]];

        MEM[v17 + 192] = MEM[192 + MEM[v19]];

        v16 += 32;

        v19 += 32;

        v20 += 1;

    }

    return v15;

}
