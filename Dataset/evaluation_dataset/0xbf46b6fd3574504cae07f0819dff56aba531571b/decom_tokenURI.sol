function tokenURI(uint256 tokenId) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    if (_reveal) {

        require(tokenId < _totalSupply, Error('ERC721Metadata: URI query for nonexistent token'));

        if (tokenId - 0) {

            v0 = v1 = 0;

            while (v2 != 0) {

                require(v0 - uint256.max, Panic(17)); // arithmetic overflow or underflow

                v0 = v0 + 1;

                v2 = _SafeDiv(v2, 10);

            }

            require(v0 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

            v3 = new bytes[](v0);

            if (v0) {

                CALLDATACOPY(v3.data, msg.data.length, v0);

            }

            while (v2 != 0) {

                v0 = _SafeSub(v0, 1);

                require(10, Panic(18)); // division by zero

                v4 = _SafeAdd(48, v2 % 10);

                require(v0 < v3.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                MEM8[32 + v0 + v3] = (byte(bytes1(v4 << 248), 0x0)) & 0xFF;

                v2 = _SafeDiv(v2, 10);

            }

        } else {

            v3 = v5 = 48;

        }

        v6 = 0;

        v7 = v8 = _tokenBaseURI.length >> 1;

        if (!(_tokenBaseURI.length & 0x1)) {

            v7 = v9 = v8 & 0x7f;

        }

        require((_tokenBaseURI.length & 0x1) - (v7 < 32), Panic(34)); // access to incorrectly encoded storage byte array

        if (_tokenBaseURI.length & 0x1 == 0) {

            MEM[32 + MEM[64]] = bytes31(_tokenBaseURI.length);

            v6 = v10 = 32 + MEM[64] + v7;

        } else if (_tokenBaseURI.length & 0x1 == 1) {

            v11 = v12 = _tokenBaseURI.data;

            v13 = v14 = 0;

            while (v13 < v7) {

                MEM[32 + MEM[64] + v13] = STORAGE[v11];

                v11 = v11 + 1;

                v13 = v13 + 32;

            }

            v6 = v15 = 32 + MEM[64] + v7;

        }

        v16 = v17 = 0;

        while (v16 < MEM[v3]) {

            MEM[v6 + v16] = MEM[v3 + 32 + v16];

            v16 = v16 + 32;

        }

        if (v16 > MEM[v3]) {

            MEM[v6 + MEM[v3]] = 0;

        }

        v18 = MEM[64];

        MEM[v18] = v6 + MEM[v3] - v18 - 32;

        MEM[64] = v6 + MEM[v3];

    } else {

        v19 = 0;

        v20 = v21 = _tokenBaseURI.length >> 1;

        if (!(_tokenBaseURI.length & 0x1)) {

            v20 = v22 = v21 & 0x7f;

        }

        require((_tokenBaseURI.length & 0x1) - (v20 < 32), Panic(34)); // access to incorrectly encoded storage byte array

        if (_tokenBaseURI.length & 0x1 == 0) {

            MEM[32 + MEM[64]] = bytes31(_tokenBaseURI.length);

            v19 = v23 = 32 + MEM[64] + v20;

        } else if (_tokenBaseURI.length & 0x1 == 1) {

            v24 = v25 = _tokenBaseURI.data;

            v26 = v27 = 0;

            while (v26 < v20) {

                MEM[32 + MEM[64] + v26] = STORAGE[v24];

                v24 = v24 + 1;

                v26 = v26 + 32;

            }

            v19 = v28 = 32 + MEM[64] + v20;

        }

        v18 = v29 = MEM[64];

        MEM[v29] = v19 - v29 - 32;

        MEM[64] = v19;

    }

    v30 = new uint256[](MEM[v18]);

    v31 = v32 = 0;

    while (v31 < MEM[v18]) {

        MEM[v30.data + v31] = MEM[v18 + 32 + v31];

        v31 = v31 + 32;

    }

    if (v31 > MEM[v18]) {

        MEM[v30.data + MEM[v18]] = 0;

    }

    return v30;

}
