function 0xda3(uint256 varg0, address varg1, address varg2) private { 

    if (this.balance >= 0) {

        if (bool(varg2.code.size)) {

            v0 = v1 = MEM[64];

            v2 = v3 = 32 + MEM[64];

            while (v4 >= 32) {

                MEM[v0] = MEM[v2];

                v4 = v4 - 32;

                v0 += 32;

                v2 += 32;

            }

            MEM[v0] = MEM[v2] & ~((uint8.max + 1) ** (32 - v4) - 1) | MEM[v0] & (uint8.max + 1) ** (32 - v4) - 1;

            v5, /* uint256 */ v6, /* uint256 */ v7, /* uint256 */ v8 = varg2.transfer(varg1, 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(varg1), varg0).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v9 = v10 = 96;

            } else {

                v9 = v11 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());

            }

            if (!v5) {

                require(!MEM[v9], v8, MEM[v9]);

                v12 = new bytes[](v13.length);

                v14 = v15 = 0;

                while (v14 < v13.length) {

                    v12[v14] = v13[v14];

                    v14 += 32;

                }

                v16 = v17 = v13.length + v12.data;

                if (0) {

                    MEM[v17 - 0] = uint256(MEM[v17 - 0]);

                }

                revert(Error(v12, v18, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v9]) {

                    require(MEM[v9] >= 32);

                    require(MEM[32 + v9], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                return ;

            }

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[MEM[64] + 4] = 32;

            revert(Error('Address: call to non-contract'));

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = 32;

        revert(Error('Address: insufficient balance for call'));

    }

}
