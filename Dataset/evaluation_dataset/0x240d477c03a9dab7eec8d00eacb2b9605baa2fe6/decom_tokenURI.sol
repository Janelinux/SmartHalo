function tokenURI(uint256 varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    require(address(_tokenURI[varg0]) != 0, Error('ERC721Metadata: URI query for nonexistent token'));

    v0 = 0x3d8c(array_b.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x3d8c(array_b.length);

    if (v4) {

        if (31 < v4) {

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = array_b.length >> 8 << 8;

        }

    }

    if (v1.length > 0) {

        if (varg0 != 0) {

            v6 = v7 = 0;

            while (v8 != 0) {

                v6 = 0x3dbe(v6);

                v8 = _SafeDiv(v8, 10);

            }

            require(v6 <= 0xffffffffffffffff, Panic(65));

            v9 = new bytes[](v6);

            if (v6) {

            }

            while (v8 != 0) {

                v6 = _SafeSub(v6, 1);

                require(10, Panic(18));

                v10 = _SafeAdd(48, v8 % 10);

                require(v6 < v9.length, Panic(50));

                MEM8[32 + v6 + v9] = (byte(~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff & v10 << 248, 0x0)) & 0xFF;

                v8 = _SafeDiv(v8, 10);

            }

        } else {

            v9 = v11 = new struct(2);

            v11.word0 = 1;

            v12 = v11.data;

            v11.word1 = 0x3000000000000000000000000000000000000000000000000000000000000000;

        }

        v13 = v14 = 0;

        while (v13 < v1.length) {

            MEM[32 + MEM[64] + v13] = v1[v13];

            v13 = v13 + 32;

        }

        if (v13 > v1.length) {

            MEM[32 + MEM[64] + v1.length] = 0;

        }

        v15 = v16 = 0;

        while (v15 < MEM[v9]) {

            MEM[32 + MEM[64] + v1.length + v15] = MEM[v9 + 32 + v15];

            v15 = v15 + 32;

        }

        if (v15 > MEM[v9]) {

            MEM[32 + MEM[64] + v1.length + MEM[v9]] = 0;

        }

        v17 = MEM[64];

        MEM[v17] = 32 + MEM[64] + v1.length + MEM[v9] - v17 - 32;

        MEM[64] = 32 + MEM[64] + v1.length + MEM[v9];

    } else {

        v17 = v18 = new struct(1);

        v18.word0 = 0;

    }

    v19 = new array[](MEM[v17]);

    v20 = v21 = 0;

    while (v20 < MEM[v17]) {

        v19[v20] = MEM[v17 + 32 + v20];

        v20 = v20 + 32;

    }

    if (v20 > MEM[v17]) {

        v19[MEM[v17]] = 0;

    }

    return v19;

}
