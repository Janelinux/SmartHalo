function @stake_3623(uint256 varg0, uint256 varg1) private { 

    require(!_pauseStaking, Error('Staking is paused'));

    require(varg1 > 0, Error('Must have valid amount'));

    require(bool((address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3)).code.size));

    v0, /* uint256 */ v1 = address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3).circulatingSupply().gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    if (v1) {

        @rebase_4155();

    }

    if (this.balance >= 0) {

        if ((address(0xc770eefad204b5180df6a14ee197d99d808ee52d)).code.size) {

            v2 = v3 = 0;

            while (v2 < 100) {

                MEM[v2 + MEM[64]] = MEM[v2 + (MEM[64] + 32)];

                v2 += 32;

            }

            if (v2 > 100) {

                MEM[100 + MEM[64]] = 0;

            }

            v4, /* uint256 */ v5, /* uint256 */ v6, /* uint256 */ v7 = address(0xc770eefad204b5180df6a14ee197d99d808ee52d).transferFrom(msg.sender, bytes4(0x23b872dd00000000000000000000000000000000000000000000000000000000) | uint224(address(msg.sender)), address(this), varg1).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v8 = v9 = 96;

            } else {

                v8 = v10 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());

            }

            if (!v4) {

                require(!MEM[v8], v7, MEM[v8]);

                v11 = new bytes[](v12.length);

                v13 = v14 = 0;

                while (v13 < v12.length) {

                    v11[v13] = v12[v13];

                    v13 += 32;

                }

                if (v13 > v12.length) {

                    v11[v12.length] = 0;

                }

                revert(Error(v11, v15, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v8]) {

                    require(32 + v8 + MEM[v8] - (32 + v8) >= 32);

                    require(MEM[32 + v8] == bool(MEM[32 + v8]));

                    require(MEM[32 + v8], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                v16 = @_isClaimAvailable_3168(varg0);

                if (v16) {

                    @claim_3674(varg0);

                }

                @_depositToTokemak_3355(varg1);

                if (_warmUpPeriod) {

                    MEM[64] += 96;

                    require(_@_isClaimAvailable_3168[address(varg0)].field0 <= ~varg1, Panic(17)); // arithmetic overflow or underflow

                    require(bool((address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3)).code.size));

                    v17, /* uint256 */ v18 = address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3).gonsForBalance(varg1).gas(msg.gas);

                    require(bool(v17), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(_@_isClaimAvailable_3168[address(varg0)].field1 <= ~v18, Panic(17)); // arithmetic overflow or underflow

                    require(stor_3 <= ~_warmUpPeriod, Panic(17)); // arithmetic overflow or underflow

                    _@_isClaimAvailable_3168[address(varg0)].field0 = _@_isClaimAvailable_3168[address(varg0)].field0 + varg1;

                    _@_isClaimAvailable_3168[address(varg0)].field1 = _@_isClaimAvailable_3168[address(varg0)].field1 + v18;

                    _@_isClaimAvailable_3168[address(varg0)].field2 = stor_3 + _warmUpPeriod;

                    if (this.balance >= 0) {

                        if ((address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3)).code.size) {

                            v19 = v20 = 0;

                            while (v19 < 68) {

                                MEM[v19 + MEM[64]] = MEM[v19 + (MEM[64] + 32)];

                                v19 += 32;

                            }

                            if (v19 > 68) {

                                MEM[68 + MEM[64]] = 0;

                            }

                            v21, /* uint256 */ v22, /* uint256 */ v23, /* uint256 */ v24 = address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3).transfer(address(0xb11fbae0567a6bb7e6ae6afa7a6b06ec316e67b9), bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000) | uint224(address(0xb11fbae0567a6bb7e6ae6afa7a6b06ec316e67b9)), varg1).gas(msg.gas);

                            if (RETURNDATASIZE() == 0) {

                                v25 = v26 = 96;

                            } else {

                                v25 = v27 = new bytes[](RETURNDATASIZE());

                                RETURNDATACOPY(v27.data, 0, RETURNDATASIZE());

                            }

                            if (!v21) {

                                require(!MEM[v25], v24, MEM[v25]);

                                v28 = new bytes[](v29.length);

                                v30 = v31 = 0;

                                while (v30 < v29.length) {

                                    v28[v30] = v29[v30];

                                    v30 += 32;

                                }

                                if (v30 > v29.length) {

                                    v28[v29.length] = 0;

                                }

                                revert(Error(v28, v15, 'SafeERC20: low-level call failed'));

                            } else {

                                if (MEM[v25]) {

                                    require(32 + v25 + MEM[v25] - (32 + v25) >= 32);

                                    require(MEM[32 + v25] == bool(MEM[32 + v25]));

                                    require(MEM[32 + v25], Error('SafeERC20: ERC20 operation did not succeed'));

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

                        MEM[MEM[64] + 4] = 32;

                        revert(Error('Address: insufficient balance for call'));

                    }

                } else if (this.balance >= 0) {

                    if ((address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3)).code.size) {

                        v32 = v33 = 0;

                        while (v32 < 68) {

                            MEM[v32 + MEM[64]] = MEM[v32 + (MEM[64] + 32)];

                            v32 += 32;

                        }

                        if (v32 > 68) {

                            MEM[68 + MEM[64]] = 0;

                        }

                        v34, /* uint256 */ v35, /* uint256 */ v36, /* uint256 */ v37 = address(0xdc49108ce5c57bc3408c3a5e95f3d864ec386ed3).transfer(address(varg0), bytes4(0xa9059cbb00000000000000000000000000000000000000000000000000000000) | uint224(address(varg0)), varg1).gas(msg.gas);

                        if (RETURNDATASIZE() == 0) {

                            v38 = v39 = 96;

                        } else {

                            v38 = v40 = new bytes[](RETURNDATASIZE());

                            RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());

                        }

                        if (!v34) {

                            require(!MEM[v38], v37, MEM[v38]);

                            v41 = new bytes[](v42.length);

                            v43 = v44 = 0;

                            while (v43 < v42.length) {

                                v41[v43] = v42[v43];

                                v43 += 32;

                            }

                            if (v43 > v42.length) {

                                v41[v42.length] = 0;

                            }

                            revert(Error(v41, v15, 'SafeERC20: low-level call failed'));

                        } else {

                            if (MEM[v38]) {

                                require(32 + v38 + MEM[v38] - (32 + v38) >= 32);

                                require(MEM[32 + v38] == bool(MEM[32 + v38]));

                                require(MEM[32 + v38], Error('SafeERC20: ERC20 operation did not succeed'));

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

                    MEM[MEM[64] + 4] = 32;

                    revert(Error('Address: insufficient balance for call'));

                }

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

}
