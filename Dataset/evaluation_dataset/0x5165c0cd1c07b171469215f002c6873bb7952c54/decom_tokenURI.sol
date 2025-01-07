function tokenURI(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(address(map_2[varg0]), Error('ERC721Metadata: URI query for nonexistent token'));

    v0 = 0x1b12(_tokenURI.length);

    v1 = new bytes[](v0);

    v2 = v3 = v1.data;

    v4 = 0x1b12(_tokenURI.length);

    if (v4) {

        if (31 < v4) {

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v3 + v4 <= v2);

        } else {

            MEM[v3] = _tokenURI.length >> 8 << 8;

        }

    }

    if (v1.length > 0) {

        v6 = 0x1174(varg0);

        v7 = v8 = 0;

        v9 = v10 = 0;

        while (v9 < v1.length) {

            MEM[v9 + (32 + MEM[64])] = v1[v9];

            v9 += 32;

        }

        if (v9 > v1.length) {

            MEM[v1.length + (32 + MEM[64])] = 0;

            goto 0x18a2B0xaebB0x2f2;

        }

        v11 = v12 = 0;

        while (v11 < v6.length) {

            MEM[v11 + (32 + MEM[64] + v1.length)] = v6[v11];

            v11 += 32;

        }

        if (v11 > v6.length) {

            MEM[v6.length + (32 + MEM[64] + v1.length)] = 0;

            goto 0x18b5B0xaebB0x2f2;

        }

        v13 = v14 = __baseTokenSuffix.length >> 1;

        if (!(__baseTokenSuffix.length & 0x1)) {

            v13 = v15 = v14 & 0x7f;

        }

        require(__baseTokenSuffix.length & 0x1 != v13 < 32, Panic(34));

        if (!(__baseTokenSuffix.length & 0x1)) {

            MEM[32 + MEM[64] + v1.length + v6.length] = __baseTokenSuffix.length & ~0xff;

            v7 = v16 = 32 + MEM[64] + v1.length + v6.length + v13;

            goto 0x1940B0xaebB0x2f2;

        } else if (__baseTokenSuffix.length & 0x1 == 1) {

            while (v7 < v13) {

                MEM[v7 + (32 + MEM[64] + v1.length + v6.length)] = STORAGE[v17];

                v17 += 1;

                v7 += 32;

            }

            v7 = v18 = 32 + MEM[64] + v1.length + v6.length + v13;

        }

        v19 = v20 = MEM[64];

        MEM[v20] = v7 - v20 - 32;

        MEM[64] = v7;

    } else {

        v19 = v21 = new struct(1);

        v21.word0 = 0;

    }

    v22 = new array[](MEM[v19]);

    v23 = v24 = 0;

    while (v23 < MEM[v19]) {

        v22[v23] = MEM[v23 + (v19 + 32)];

        v23 += 32;

    }

    if (v23 > MEM[v19]) {

        v22[MEM[v19]] = 0;

        goto 0x187bB0x198eB0x18d0x2e4;

    }

    return v22;

}
