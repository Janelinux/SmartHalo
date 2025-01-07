function tokensOfOwnerIn(address owner, uint256 start, uint256 stop) public nonPayable { 

    require(msg.data.length - 4 >= 96);

    require(start <= stop, InvalidQueryRange());

    v0 = v1 = 0;

    v2 = v3 = 1 + stor_4;

    if (start < 1) {

        v4 = v5 = 1;

    }

    v6 = v7 = 0x1612(owner);

    if (v4 >= v2) {

        v6 = v8 = 0;

    } else {

        v6 = v9 = v2 - v4;

    }

    require(v6 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v10 = new uint256[](v6);

    if (v6) {

        CALLDATACOPY(v10.data, msg.data.length, v6 << 5);

    }

    if (v6) {

        v11 = 0x1ef8(v4);

        v12 = v13 = 0;

        if (!v11.word2) {

            v12 = v14 = v11.word0;

        }

        while (1) {

            v15 = v16 = v4 != v2;

            if (v4 == v2) {

                // Unknown jump to Block 0x1bdfB0x664. Refer to 3-address code (TAC);

            }

            v15 = v0 != v6;

            if (v15) {

                v17 = new struct(3);

                v17.word0 = _tokensOfOwner[v4].field0_0_19;

                v17.word1 = _tokensOfOwner[v4].field0_20_27;

                v17.word2 = _tokensOfOwner[v4].field0_28_28;

                if (!_tokensOfOwner[v4].field0_28_28) {

                    if (address(v17.word0)) {

                        v12 = v17.word0;

                    }

                    if (address(v12) == owner) {

                        v0 += 1;

                        require(v0 < v10.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                        v10[v0] = v4;

                    }

                }

                v4 += 1;

            }

        }

    }

    v18 = new uint256[](v10.length);

    v19 = v20 = 0;

    v21 = v22 = v10.data;

    v23 = v24 = v18.data;

    while (v19 < v10.length) {

        MEM[v23] = MEM[v21];

        v21 += 32;

        v23 += 32;

        v19 += 1;

    }

    return v18;

}
