function claimTokens(address varg0, address varg1) public nonPayable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(msg.sender == _owner);

    require(varg1);

    if (varg0) {

        require(varg0.code.size);

        v0, v1 = varg0.balanceOf(this).gas(msg.gas);

        require(v0); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        MEM[64] = MEM[64] + 100;

        if (this.balance >= 0) {

            if (varg0.code.size) {

                v2 = v3 = MEM[64];

                v4 = v5 = 32 + MEM[64];

                while (v6 >= 32) {

                    MEM[v2] = MEM[v4];

                    v6 = v6 + ~31;

                    v2 += 32;

                    v4 += 32;

                }

                MEM[v2] = MEM[v4] & ~(256 ** (32 - v6) - 1) | MEM[v2] & 256 ** (32 - v6) - 1;

                v7, v8, v9, v10 = varg0.transfer(varg1, v1).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v11 = v12 = 96;

                } else {

                    v11 = v13 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());

                }

                if (!v7) {

                    require(!MEM[v11]v10, MEM[v11]);

                    v14 = new array[](v15.length);

                    v16 = v17 = 0;

                    while (v16 < v15.length) {

                        v14[v16] = v15[v16];

                        v16 += 32;

                    }

                    v18 = v19 = v15.length + v14.data;

                    if (0) {

                        MEM[v19 - 0] = ~0x0 & MEM[v19 - 0];

                    }

                    revert(Error(v14, v20, 'SafeERC20: low-level call failed'));

                } else {

                    if (MEM[v11]) {

                        require(MEM[v11] >= 32);

                        require(MEM[32 + v11], Error('SafeERC20: ERC20 operation did not succeed'));

                    }

                    goto 0x1328B0x117;

                }

            } else {

                MEM[MEM[64] + 4] = 32;

                revert(Error('Address: call to non-contract'));

            }

        } else {

            MEM[4 + MEM[64]] = 32;

            revert(Error('Address: insufficient balance for call'));

        }

    } else {

        0x8a6(this.balance, varg1);

    }

}
