function purchase(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(1 == _openIdo, Error('IDO is closed'));

    v0 = _SafeAdd(_soldAmount, varg0);

    _soldAmount = v0;

    require(_goalAmount >= v0, Error('The amount entered exceeds IDO Goal'));

    v1 = _SafeMul(_salePrice, varg0);

    v2 = _SafeMul(0x5f5e100, v1);

    v3 = _SafeAdd(_bought[msg.sender], v2);

    require(v3 <= _maxAmount, Error('Above Presale allocation.'));

    require(v3 >= _minAmount, Error('Below Presale allocation.'));

    if (this.balance >= 0) {

        if (_usdc.code.size) {

            v4 = v5 = 0;

            while (v4 < 100) {

                MEM[v4 + MEM[64]] = MEM[v4 + (MEM[64] + 32)];

                v4 += 32;

            }

            if (v4 > 100) {

                MEM[100 + MEM[64]] = 0;

                goto 0x1052B0xafeB0xa2cB0x9ccB0x78e;

            }

            v6, v7, v8, v9 = _usdc.transferFrom(msg.sender, address(this), varg0).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v10 = v11 = 96;

            } else {

                v10 = v12 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v12.data, 0, RETURNDATASIZE());

            }

            if (!v6) {

                require(!MEM[v10]v9, MEM[v10]);

                v13 = new array[](v14.length);

                v15 = v16 = 0;

                while (v15 < v14.length) {

                    v13[v15] = v14[v15];

                    v15 += 32;

                }

                if (v15 > v14.length) {

                    v13[v14.length] = 0;

                    goto 0x107bB0xc2bB0xafeB0xa2cB0x9ccB0x78e;

                }

                revert(Error(v13, v17, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v10]) {

                    require(32 + v10 + MEM[v10] - (32 + v10) >= 32);

                    require(MEM[32 + v10] == MEM[32 + v10]);

                    require(MEM[32 + v10], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                _bought[msg.sender] = v3;

                return 1;

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
