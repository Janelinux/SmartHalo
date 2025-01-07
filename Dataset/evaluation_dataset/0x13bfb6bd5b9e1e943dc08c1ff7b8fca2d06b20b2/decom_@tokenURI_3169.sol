function @tokenURI_3169(uint256 varg0) private { 

    v0 = @_exists_1571(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (_isRevealed) {

        require(varg0 >= 1, Panic(17)); // arithmetic overflow or underflow

        require(varg0 - 1 <= ~_tokenOffset, Panic(17)); // arithmetic overflow or underflow

        v1 = _SafeMod(varg0 - 1 + _tokenOffset, ~0 + (_@_exists_1571 - _totalSupply));

        require(1 <= ~v1, Panic(17)); // arithmetic overflow or underflow

        v2 = @toString_176(1 + v1);

        v3 = v4 = 0;

        v5 = v6 = _@baseURI_2802.length >> 1;

        if (!(_@baseURI_2802.length & 0x1)) {

            v5 = v7 = v6 & 0x7f;

        }

        require(_@baseURI_2802.length & 0x1 != v5 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        if (!(_@baseURI_2802.length & 0x1)) {

            MEM[32 + MEM[64]] = bytes31(_@baseURI_2802.length);

            v3 = v8 = 32 + MEM[64] + v5;

        } else if (_@baseURI_2802.length & 0x1 == 1) {

            v9 = v10 = _@baseURI_2802.data;

            v11 = v12 = 0;

            while (v11 < v5) {

                MEM[v11 + (32 + MEM[64])] = STORAGE[v9];

                v9 += 1;

                v11 += 32;

            }

            v3 = v13 = 32 + MEM[64] + v5;

        }

        v14 = v15 = 0;

        while (v14 < v2.length) {

            MEM[v14 + v3] = v2[v14];

            v14 += 32;

        }

        if (v14 > v2.length) {

            MEM[v2.length + v3] = 0;

        }

        MEM[MEM[64]] = v2.length + v3 - MEM[64] - 32;

        MEM[64] = v2.length + v3;

        return MEM[64];

    } else {

        v16 = v17 = _@preRevealURI_2805.length >> 1;

        if (!(_@preRevealURI_2805.length & 0x1)) {

            v16 = v18 = v17 & 0x7f;

        }

        require(_@preRevealURI_2805.length & 0x1 != v16 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        v19 = new bytes[](v16);

        v20 = v21 = v19.data;

        v22 = v23 = _@preRevealURI_2805.length >> 1;

        if (!(_@preRevealURI_2805.length & 0x1)) {

            v22 = v24 = v23 & 0x7f;

        }

        require(_@preRevealURI_2805.length & 0x1 != v22 < 32, Panic(34)); // access to incorrectly encoded storage byte array

        if (!v22) {

            return v19;

        } else if (31 < v22) {

            v25 = v26 = _@preRevealURI_2805.data;

            do {

                MEM[v20] = STORAGE[v25];

                v25 += 1;

                v20 += 32;

            } while (v21 + v22 <= v20);

            return v19;

        } else {

            MEM[v21] = _@preRevealURI_2805.length >> 8 << 8;

            return v19;

        }

    }

}
