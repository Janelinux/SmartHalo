function 0x1b0c(uint256 varg0, address varg1, address varg2) private { 

    v0 = v1 = 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 != EXTCODEHASH(varg2);

    if (0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 != EXTCODEHASH(varg2)) {

        v0 = bool(EXTCODEHASH(varg2));

    }

    if (v0) {

        v2 = v3 = MEM[64];

        v4 = v5 = 32 + MEM[64];

        while (v6 >= 32) {

            MEM[v2] = MEM[v4];

            v6 = v6 - 32;

            v2 += 32;

            v4 += 32;

        }

        MEM[v2] = MEM[v4] & ~((uint8.max + 1) ** (32 - v6) - 1) | MEM[v2] & (uint8.max + 1) ** (32 - v6) - 1;

        v7, /* uint256 */ v8, /* uint256 */ v9, /* uint256 */ v10 = varg2.transfer(varg1, 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v11 = v12 = 96;

        } else {

            v11 = v13 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());

        }

        if (!v7) {

            require(!MEM[v11], v10, MEM[v11]);

            v14 = new bytes[](v15.length);

            if (v15.length) {

                v16 = v15.data;

                v17 = v14.data;

                v14[0] = v15[0];

                v18 = v19 = 32;

                while (v18 < v15.length) {

                    v14[v18] = v15[v18];

                    v18 += 32;

                }

            }

            v20 = v21 = v15.length + v14.data;

            if (0) {

                MEM[v21 - 0] = uint256(MEM[v21 - 0]);

            }

            revert(Error(v14));

        } else {

            if (MEM[v11]) {

                require(MEM[v11] >= 32);

                require(MEM[32 + v11], Error('SafeERC20: ERC20 operation did not succeed'));

            }

            return ;

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: call to non-contract'));

    }

}
