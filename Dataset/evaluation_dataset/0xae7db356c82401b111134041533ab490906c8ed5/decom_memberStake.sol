function memberStake(address token, uint256 amount, uint256 memberId) public payable { 

    require(msg.data.length - 4 >= 96);

    require(_payPayroll != 2, Error('ReentrancyGuard: reentrant call'));

    _payPayroll = 2;

    v0 = v1 = uint8(_whitelisted[address(token)]);

    if (v1) {

        v0 = v2 = bool(amount);

    }

    if (!v0) {

        v0 = v3 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == token;

        if (v3) {

            v0 = v4 = bool(msg.value);

        }

    }

    require(v0, InvalidStake());

    require(memberId, NotMember());

    require(map_5[memberId] != ~0, Panic(17)); // arithmetic overflow or underflow

    map_5[memberId] += 1;

    v5 = v6 = bool(msg.value);

    if (msg.value) {

        v5 = v7 = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee == token;

    }

    if (!v5) {

        if (this.balance >= 0) {

            if (token.code.size) {

                v8 = v9 = 0;

                while (v8 < 100) {

                    MEM[v8 + MEM[64]] = MEM[v8 + (MEM[64] + 32)];

                    v8 += 32;

                }

                if (v8 > 100) {

                    MEM[100 + MEM[64]] = 0;

                }

                v10, /* uint256 */ v11, /* uint256 */ v12, /* uint256 */ v13 = token.transferFrom(msg.sender, address(this), amount).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v14 = v15 = 96;

                } else {

                    v14 = v16 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v16.data, 0, RETURNDATASIZE());

                }

                if (!v10) {

                    require(!MEM[v14], v13, MEM[v14]);

                    v17 = new bytes[](v18.length);

                    v19 = v20 = 0;

                    while (v19 < v18.length) {

                        v17[v19] = v18[v19];

                        v19 += 32;

                    }

                    if (v19 > v18.length) {

                        v17[v18.length] = 0;

                    }

                    revert(Error(v17, v21, 'SafeERC20: low-level call failed'));

                } else {

                    if (MEM[v14]) {

                        require(32 + v14 + MEM[v14] - (32 + v14) >= 32);

                        require(MEM[32 + v14] == bool(MEM[32 + v14]));

                        require(MEM[32 + v14], Error('SafeERC20: ERC20 operation did not succeed'));

                    }

                    emit Staked(msg.sender, token, memberId, amount, 1 + map_5[memberId]);

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

        v22, /* uint256 */ v23 = _@_withdraw_1619.call().value(msg.value).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v24 = new bytes[](RETURNDATASIZE());

            v23 = v24.data;

            RETURNDATACOPY(v23, 0, RETURNDATASIZE());

        }

        require(v22, Error('Transfer failed.'));

        emit Staked(msg.sender, 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, memberId, msg.value, map_5[memberId]);

    }

    _payPayroll = 1;

}
