function 0x62c(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 

    v0 = address(varg2);

    v1 = address(varg1);

    v2 = address(varg3);

    if (this.balance >= 0) {

        if (v2.code.size) {

            v3 = v4 = 0;

            while (v3 < 100) {

                MEM[v3 + MEM[64]] = MEM[v3 + (MEM[64] + 32)];

                v3 += 32;

            }

            if (v3 > 100) {

                MEM[100 + MEM[64]] = 0;

                goto 0x9f3B0x76cB0x68eB0x62c;

            }

            v5, v6, v7, v8 = address(v2).transferFrom(v0, v1, varg0).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v9 = v10 = 96;

            } else {

                v9 = v11 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());

            }

            if (!v5) {

                require(!MEM[v9]v8, MEM[v9]);

                v12 = new array[](v13.length);

                v14 = v15 = 0;

                while (v14 < v13.length) {

                    v12[v14] = v13[v14];

                    v14 += 32;

                }

                if (v14 > v13.length) {

                    v12[32] = 0;

                    goto 0x9cbB0xa23B0x8caB0x76cB0x68eB0x62c;

                }

                revert(Error(v12, v16, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v9]) {

                    require(32 + v9 + MEM[v9] - (32 + v9) >= 32);

                    require(MEM[32 + v9] == MEM[32 + v9]);

                    require(MEM[32 + v9], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                return ;

            }

        } else {

            MEM[MEM[64] + 4] = 32;

            revert(Error('Address: call to non-contract'));

        }

    } else {

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: insufficient balance for call'));

    }

}
