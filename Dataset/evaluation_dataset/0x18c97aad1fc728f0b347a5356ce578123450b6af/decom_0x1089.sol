function 0x1089(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, address varg4) private { 

    require(varg1 > 0, Error('Must withdraw something'));

    v0 = 0xea1(varg3);

    if (!varg0) {

        v1 = 0xf83();

        require(bool((address(v1)).code.size));

        v2 = address(v1).withdraw(address(varg3), varg1, this).gas(msg.gas);

        require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        if (this.balance >= 0) {

            if ((address(varg3)).code.size) {

                v3 = v4 = 0;

                while (v3 < 68) {

                    MEM[v3 + MEM[64]] = MEM[v3 + (MEM[64] + 32)];

                    v3 += 32;

                }

                if (v3 > 68) {

                    MEM[MEM[64] + 68] = 0;

                }

                v5, /* uint256 */ v6, /* uint256 */ v7, /* uint256 */ v8 = address(varg3).transfer(varg4, varg2).gas(msg.gas);

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

                    if (v14 > v13.length) {

                        v12[v13.length] = 0;

                    }

                    revert(Error(v12, v16, 'SafeERC20: low-level call failed'));

                } else if (MEM[v9]) {

                    require(32 + v9 + MEM[v9] - (32 + v9) >= 32);

                    require(MEM[32 + v9] == bool(MEM[32 + v9]));

                    require(MEM[32 + v9], Error('SafeERC20: ERC20 operation did not succeed'));

                }

            } else {

                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                MEM[MEM[64] + 4] = 32;

                revert(Error('Address: call to non-contract'));

            }

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[MEM[64] + 4] = 32;

            revert(Error('Address: insufficient balance for call'));

        }

    } else {

        require(varg2 == varg1, Error('Cache inactive for assets with fee'));

        v17 = 0xf83();

        require(bool((address(v17)).code.size));

        v18 = address(v17).withdraw(address(varg3), varg2, varg4).gas(msg.gas);

        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    emit PlatformWithdrawal(address(varg3), address(v0), varg1, varg2);

    return ;

}
