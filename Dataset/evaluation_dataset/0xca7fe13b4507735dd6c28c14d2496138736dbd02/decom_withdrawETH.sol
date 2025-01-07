function withdrawETH() public nonPayable { 

    if (this.balance) {

        require(_weth.code.size);

        v0 = _weth.deposit().value(this.balance).gas(msg.gas);

        require(v0); // checks call status, propagates error data on error

        require(_uselessNFT.code.size);

        v1, v2 = _uselessNFT.getPlatinumTokenId().gas(msg.gas);

        require(v1); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        require(MEM[MEM[64]] != 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, Error('council is not set up yet'));

        require(_weth.code.size);

        v3, v4 = _weth.balanceOf(address(this)).gas(msg.gas);

        require(v3); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        if (MEM[MEM[64]]) {

            v5 = v6 = 1814;

            require(_uselessNFT.code.size);

            v7, v8 = _uselessNFT.ownerOf(MEM[MEM[64]]).gas(msg.gas);

            require(v7); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 32);

            v9 = 10000;

            v10 = MEM[MEM[64]] * _platinumRoyaltyShareNumerator;

            while (this.balance < 0) {

                require(this.balance >= 0, Error('Address: insufficient balance for call'));

                if (_weth.code.size) {

                    break;

                }

                require(_weth.code.size, Error('Address: call to non-contract'));

                v11 = v12 = MEM[64];

                v13 = v14 = 32 + MEM[64];

                while (v15 >= 32) {

                    MEM[v11] = MEM[v13];

                    v15 = v15 + 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0;

                    v11 += 32;

                    v13 += 32;

                }

                MEM[v11] = MEM[v13] & ~(256 ** (32 - v15) - 1) | MEM[v11] & 256 ** (32 - v15) - 1;

                v16 = _weth.transfer(address(v8), v10 / v9).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v17 = v18 = 96;

                } else {

                    v17 = v19 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());

                }

                if (!v16) {

                    require(!MEM[v17]v20, MEM[v17]);

                    v21 = new array[](v22.length);

                    v23 = v24 = 0;

                    while (v23 < v22.length) {

                        v21[v23] = v22[v23];

                        v23 += 32;

                    }

                    v25 = v26 = v22.length + v21.data;

                    if (0) {

                        MEM[v26 - 0] = ~0x0 & MEM[v26 - 0];

                    }

                    revert(Error(v21, v27, 'SafeERC20: low-level call failed'));

                } else {

                    if (MEM[v17]) {

                        require(MEM[v17] >= 32);

                        require(MEM[32 + v17], Error('SafeERC20: ERC20 operation did not succeed'));

                    }

                    goto {'0x7160x48aB0x84eB0x15d', '0xf350x48aB0x84eB0x15d'};

                    MEM[MEM[64]] = 0xe2c6d41c00000000000000000000000000000000000000000000000000000000;

                    v5 = v28 = 3893;

                    require(_uselessNFT.code.size);

                    v29, v30, v20 = _uselessNFT.staticcall(MEM[(MEM[64]) len 4], MEM[(MEM[64]) len 32]).gas(msg.gas);

                    require(v29); // checks call status, propagates error data on error

                    v31 = new bytes[](RETURNDATASIZE());

                    require(RETURNDATASIZE() >= 32);

                    v8 = v32 = v31.length;

                    v9 = v33 = 10000;

                    v10 = v34 = MEM[MEM[64]] * (v33 - _platinumRoyaltyShareNumerator);

                    goto 0xf7bB0x15d;

                }

            }

        }

        goto 0xe77;

    }

}
