function stake(uint256 _amount, address _recipient) public payable { 

    require(msg.data.length - 4 >= 64);

    0xe48();

    if (bool((address(address(0xa634fd53f1129a410a3da6df586d2ee02541d749))).code.size)) {

        v0 = v1 = MEM[64];

        v2 = v3 = 32 + MEM[64];

        while (v4 >= 32) {

            MEM[v0] = MEM[v2];

            v4 = v4 + ~31;

            v0 += 32;

            v2 += 32;

        }

        MEM[v0] = MEM[v2] & ~(256 ** (32 - v4) - 1) | MEM[v0] & 256 ** (32 - v4) - 1;

        v5, /* uint256 */ v6, /* uint256 */ v7, /* uint256 */ v8 = address(0xa634fd53f1129a410a3da6df586d2ee02541d749).transferFrom(msg.sender, address(this), _amount).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v9 = v10 = 96;

        } else {

            v9 = v11 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());

        }

        if (!v5) {

            require(!MEM[v9], v8, MEM[v9]);

            v12 = new bytes[](v13.length);

            if (v13.length) {

                v14 = v13.data;

                v15 = v12.data;

                v12[0] = v13[0];

                v16 = v17 = 32;

                while (v16 < v13.length) {

                    v12[v16] = v13[v16];

                    v16 += 32;

                }

            }

            v18 = v19 = v13.length + v12.data;

            if (0) {

                MEM[v19 - 0] = ~0x0 & MEM[v19 - 0];

            }

            revert(Error(v12));

        } else {

            if (MEM[v9]) {

                require(MEM[v9] >= 32);

                require(MEM[32 + v9], Error('SafeERC20: ERC20 operation did not succeed'));

            }

            MEM[MEM[64]] = 0;

            MEM[32 + MEM[64]] = 0;

            MEM[64 + MEM[64]] = 0;

            MEM[96 + MEM[64]] = False;

            MEM[MEM[64] + 64] = _toggleDepositLock[_recipient].field2;

            MEM[MEM[64] + 96] = bool(_toggleDepositLock[address(address(_recipient))].field3);

            require(!uint8(_toggleDepositLock[address(address(_recipient))].field3), Error('Deposits for account are locked'));

            require(_amount + _toggleDepositLock[_recipient].field0 >= _toggleDepositLock[_recipient].field0, Error('SafeMath: addition overflow'));

            require(bool((address(0x1113320c50ab4eba3cfe7a396d9c1bdb6b8c2f60)).code.size));

            v20, /* uint256 */ v21 = address(0x1113320c50ab4eba3cfe7a396d9c1bdb6b8c2f60).gonsForBalance(_amount).gas(msg.gas);

            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 32);

            require(v21 + _toggleDepositLock[_recipient].field1 >= _toggleDepositLock[_recipient].field1, Error('SafeMath: addition overflow'));

            require(_warmupPeriod + stor_3 >= stor_3, Error('SafeMath: addition overflow'));

            _toggleDepositLock[_recipient].field0 += _amount;

            _toggleDepositLock[_recipient].field1 += v21;

            _toggleDepositLock[_recipient].field2 = _warmupPeriod + stor_3;

            _toggleDepositLock[_recipient].field3 = False | bytes31(_toggleDepositLock[address(address(_recipient))].field3);

            if (bool((address(address(0x1113320c50ab4eba3cfe7a396d9c1bdb6b8c2f60))).code.size)) {

                v22 = v23 = MEM[64];

                v24 = v25 = 32 + MEM[64];

                while (v26 >= 32) {

                    MEM[v22] = MEM[v24];

                    v26 = v26 + ~31;

                    v22 += 32;

                    v24 += 32;

                }

                MEM[v22] = MEM[v24] & ~(256 ** (32 - v26) - 1) | MEM[v22] & 256 ** (32 - v26) - 1;

                v27, /* uint256 */ v28, /* uint256 */ v29, /* uint256 */ v30 = address(0x1113320c50ab4eba3cfe7a396d9c1bdb6b8c2f60).transfer(_warmupContract, _amount).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v31 = v32 = 96;

                } else {

                    v31 = v33 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v33.data, 0, RETURNDATASIZE());

                }

                if (!v27) {

                    require(!MEM[v31], v30, MEM[v31]);

                    v34 = new bytes[](v35.length);

                    if (v35.length) {

                        v36 = v35.data;

                        v37 = v34.data;

                        v34[0] = v35[0];

                        v38 = v39 = 32;

                        while (v38 < v35.length) {

                            v34[v38] = v35[v38];

                            v38 += 32;

                        }

                    }

                    v40 = v41 = v35.length + v34.data;

                    if (0) {

                        MEM[v41 - 0] = ~0x0 & MEM[v41 - 0];

                    }

                    revert(Error(v34));

                } else {

                    if (MEM[v31]) {

                        require(MEM[v31] >= 32);

                        require(MEM[32 + v31], Error('SafeERC20: ERC20 operation did not succeed'));

                    }

                    return True;

                }

            } else {

                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                MEM[MEM[64] + 4] = 32;

                revert(Error('Address: call to non-contract'));

            }

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: call to non-contract'));

    }

}
