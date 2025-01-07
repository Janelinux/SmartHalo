function multicall(bytes[] data) public payable { 

    require(msg.data.length - 4 >= 32);

    require(data <= uint64.max);

    require(4 + data + 31 < msg.data.length);

    v0 = v1 = data.length;

    require(v1 <= uint64.max);

    require(4 + data + (v1 << 5) + 32 <= msg.data.length);

    require(v1 <= uint64.max);

    v2 = new uint256[](v1);

    if (v1) {

        v3 = v2.data;

        do {

            MEM[v3] = 96;

            v3 += 32;

            v0 = v0 - 1;

        } while (!v0);

    }

    v4 = v5 = 0;

    while (v4 < v1) {

        assert(v4 < v1);

        require(data[v4] < msg.data.length - data.data - 31);

        require(msg.data[data.data + data[v4]] <= uint64.max);

        require(32 + (data.data + data[v4]) <= msg.data.length - msg.data[data.data + data[v4]]);

        CALLDATACOPY(MEM[64], 32 + (data.data + data[v4]), msg.data[data.data + data[v4]]);

        MEM[msg.data[data.data + data[v4]] + MEM[64]] = 0;

        v6, /* uint256 */ v7 = this.delegatecall(MEM[MEM[64]:MEM[64] + msg.data[data.data + data[vc20_0x0V0x2aa]] + MEM[64] - MEM[64]], MEM[MEM[64]:MEM[64]]).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v8 = v9 = 96;

        } else {

            v8 = v10 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());

        }

        if (v6) {

            assert(v4 < v2.length);

            v2[v4] = v8;

            v4 += 1;

        } else {

            require(MEM[v8] >= 68);

            require(32 + (v8 + 4) + MEM[v8 + 4] - (32 + (v8 + 4)) >= 32);

            require(MEM[32 + (v8 + 4)] <= uint64.max);

            require(32 + (v8 + 4) + MEM[v8 + 4] > 32 + (v8 + 4) + MEM[32 + (v8 + 4)] + 31);

            v11 = MEM[32 + (v8 + 4) + MEM[32 + (v8 + 4)]];

            assert(v11 <= uint64.max);

            v12 = new bytes[](v11);

            assert(!((v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11)) < v12) | (v12 + (32 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + v11)) > uint64.max)));

            require(32 + (v8 + 4) + MEM[32 + (v8 + 4)] + v11 + 32 <= 32 + (v8 + 4) + MEM[v8 + 4]);

            v13 = v14 = 0;

            while (v13 < v11) {

                v12[v13] = MEM[v13 + (32 + (v8 + 4) + MEM[32 + (v8 + 4)] + 32)];

                v13 += 32;

            }

            if (v13 > v11) {

                v12[v11] = 0;

            }

            v15 = new bytes[](v12.length);

            v16 = v17 = 0;

            while (v16 < v12.length) {

                v15[v16] = v12[v16];

                v16 += 32;

            }

            if (v16 > v12.length) {

                v15[v12.length] = 0;

            }

            revert(Error(v15));

        }

    }

    v18 = v19 = 0;

    v20 = new uint256[](v2.length);

    v21 = v22 = v20.data;

    v23 = v24 = MEM[64] + (v2.length << 5) + 64;

    v25 = v26 = v2.data;

    while (v18 < v2.length) {

        MEM[v21] = v23 - MEM[64] - 64;

        MEM[v23] = MEM[MEM[v25]];

        v27 = v28 = 0;

        while (v27 < MEM[MEM[v25]]) {

            MEM[v27 + (v23 + 32)] = MEM[v27 + (MEM[v25] + 32)];

            v27 += 32;

        }

        if (v27 > MEM[MEM[v25]]) {

            MEM[MEM[MEM[v25]] + (v23 + 32)] = 0;

        }

        v23 = 32 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + MEM[MEM[v25]]) + v23);

        v21 += 32;

        v25 += 32;

        v18 += 1;

    }

    return v20;

}
