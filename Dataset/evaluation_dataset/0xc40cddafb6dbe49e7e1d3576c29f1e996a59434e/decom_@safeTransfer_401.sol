function @safeTransfer_401(uint256 varg0, address varg1, address varg2) private { 

    if (this.balance >= 0) {

        if (varg2.code.size > 0) {

            v0 = v1 = 0;

            while (v0 < 68) {

                MEM[MEM[64] + v0] = MEM[MEM[64] + 32 + v0];

                v0 = v0 + 32;

            }

            if (v0 > 68) {

                MEM[MEM[64] + 68] = 0;

            }

            v2, /* uint256 */ v3, /* uint256 */ v4, /* uint256 */ v5 = varg2.transfer(varg1, varg0).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v6 = v7 = 96;

            } else {

                v6 = v8 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v8.data, 0, RETURNDATASIZE());

            }

            if (!v2) {

                require(MEM[v6] <= 0, v5, MEM[v6]);

                v9 = new bytes[](v10.length);

                v11 = v12 = 0;

                while (v11 < v10.length) {

                    v9[v11] = v10[v11];

                    v11 = v11 + 32;

                }

                if (v11 > v10.length) {

                    v9[v10.length][32] = 0;

                }

                revert(Error(v9, v13, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v6] > 0) {

                    require(32 + v6 + MEM[v6] - (32 + v6) >= 32);

                    require(MEM[32 + v6] == bool(MEM[32 + v6]));

                    require(MEM[32 + v6], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                return ;

            }

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = 32;

            revert(Error('Address: call to non-contract'));

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = 32;

        revert(Error('Address: insufficient balance for call'));

    }

}
