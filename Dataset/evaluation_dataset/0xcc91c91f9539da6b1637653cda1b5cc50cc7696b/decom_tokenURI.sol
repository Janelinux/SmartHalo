function tokenURI(address creator, uint256 tokenId) public payable { 

    require(msg.data.length - 4 >= 64);

    v0 = v1 = _tokenURI == creator;

    if (v1) {

        v0 = bool(_mintNumber[tokenId]);

    }

    require(v0, Error('Invalid token'));

    v2 = v3 = 96;

    v4 = v5 = 0;

    while (v4 < array_b.length) {

        require(v4 < array_b.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v6 = v7 = 0;

        while (v6 < v8.length) {

            MEM[v6 + (32 + MEM[64])] = v8[v6];

            v6 += 32;

        }

        if (v6 > v8.length) {

            MEM[32 + MEM[64] + v8.length] = 0;

        }

        MEM[64] = v8.length + (32 + MEM[64]);

        v9 = new uint256[](v10 - MEM[64] - 32);

        v10 = 0;

        v11 = array_b[v4].length >> 1;

        if (!(array_b[v4].length & 0x1)) {

            v11 = v12 = v11 & 0x7f;

        }

        require(array_b[v4].length & 0x1 != v11 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        if (!(array_b[v4].length & 0x1)) {

            MEM[v9.data] = bytes31(array_b[v4].length);

            v10 = v13 = v9.data + v11;

        } else if (array_b[v4].length & 0x1 == 1) {

            v14 = v15 = array_b[v4].data;

            v16 = v17 = 0;

            while (v16 < v11) {

                MEM[v16 + v9.data] = STORAGE[v14];

                v14 += 1;

                v16 += 32;

            }

            v10 = v18 = v9.data + v11;

        }

        v19 = v9.length;

        v20 = v9.data;

        if (keccak256(v9) != keccak256('<EDITION>')) {

            require(v4 < array_b.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v21 = v22 = 0;

            while (v21 < MEM[v2]) {

                MEM[v21 + (32 + MEM[64])] = MEM[v21 + (v2 + 32)];

                v21 += 32;

            }

            if (v21 > MEM[v2]) {

                MEM[32 + MEM[64] + MEM[v2]] = 0;

            }

            v23 = 0;

            v24 = array_b[v4].length >> 1;

            if (!(array_b[v4].length & 0x1)) {

                v24 = v25 = v24 & 0x7f;

            }

            require(array_b[v4].length & 0x1 != v24 < 32, Panic(34)); // access to incorrectly encoded storage byte array

            if (!(array_b[v4].length & 0x1)) {

                MEM[32 + MEM[64] + MEM[v2]] = bytes31(array_b[v4].length);

                v23 = v26 = 32 + MEM[64] + MEM[v2] + v24;

            } else if (array_b[v4].length & 0x1 == 1) {

                v27 = v28 = array_b[v4].data;

                v29 = v30 = 0;

                while (v29 < v24) {

                    MEM[v29 + (32 + MEM[64] + MEM[v2])] = STORAGE[v27];

                    v27 += 1;

                    v29 += 32;

                }

                v23 = v31 = 32 + MEM[64] + MEM[v2] + v24;

            }

            v2 = MEM[64];

            MEM[v2] = v23 - v2 - 32;

            MEM[64] = v23;

        } else {

            v32 = _SafeSub(100, _mintNumber[tokenId]);

            v33 = 0x2932(v32);

            v34 = v35 = 0;

            while (v34 < MEM[v2]) {

                MEM[v34 + (32 + MEM[64])] = MEM[v34 + (v2 + 32)];

                v34 += 32;

            }

            if (v34 > MEM[v2]) {

                MEM[32 + MEM[64] + MEM[v2]] = 0;

            }

            v36 = v37 = 0;

            while (v36 < v33.length) {

                MEM[v36 + (32 + MEM[64] + MEM[v2])] = v33[v36];

                v36 += 32;

            }

            if (v36 > v33.length) {

                MEM[32 + MEM[64] + MEM[v2] + v33.length] = 0;

            }

            v2 = v38 = MEM[64];

            MEM[v38] = v33.length + (32 + MEM[64] + MEM[v2]) - v38 - 32;

            MEM[64] = v33.length + (32 + MEM[64] + MEM[v2]);

        }

        v4 = 0x38fe(v4);

    }

    v39 = new uint256[](MEM[v2]);

    v40 = v41 = 0;

    while (v40 < MEM[v2]) {

        MEM[v40 + v39.data] = MEM[v40 + (v2 + 32)];

        v40 += 32;

    }

    if (v40 > MEM[v2]) {

        MEM[v39.data + MEM[v2]] = 0;

    }

    return v39;

}
