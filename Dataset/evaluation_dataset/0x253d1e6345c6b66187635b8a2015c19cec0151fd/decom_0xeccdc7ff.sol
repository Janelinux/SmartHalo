function 0xeccdc7ff(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5, uint256 varg6, uint256 varg7, uint256 varg8) public nonPayable { 

    require(msg.data.length - 4 >= 288);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    v0 = new uint256[](varg0.length);

    require(!((v0 + (~0x1f & 32 + (~0x1f & varg0.length + 31) + 31) < v0) | (v0 + (~0x1f & 32 + (~0x1f & varg0.length + 31) + 31) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg0 + varg0.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg0 + 32, varg0.length);

    v0[varg0.length] = 0;

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= 0xffffffffffffffff, Panic(65));

    v1 = new uint256[](varg1.length);

    require(!((v1 + (~0x1f & 32 + (~0x1f & varg1.length + 31) + 31) < v1) | (v1 + (~0x1f & 32 + (~0x1f & varg1.length + 31) + 31) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg1 + varg1.length + 32 <= msg.data.length);

    CALLDATACOPY(v1.data, 4 + varg1 + 32, varg1.length);

    v1[varg1.length] = 0;

    require(varg2 <= 0xffffffffffffffff);

    require(4 + varg2 + 31 < msg.data.length);

    require(varg2.length <= 0xffffffffffffffff, Panic(65));

    v2 = new uint256[](varg2.length);

    require(!((v2 + (~0x1f & 32 + (~0x1f & varg2.length + 31) + 31) < v2) | (v2 + (~0x1f & 32 + (~0x1f & varg2.length + 31) + 31) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg2 + varg2.length + 32 <= msg.data.length);

    CALLDATACOPY(v2.data, 4 + varg2 + 32, varg2.length);

    v2[varg2.length] = 0;

    require(varg3 <= 0xffffffffffffffff);

    require(4 + varg3 + 31 < msg.data.length);

    require(varg3.length <= 0xffffffffffffffff, Panic(65));

    v3 = new uint256[](varg3.length);

    require(!((v3 + (~0x1f & 32 + (~0x1f & varg3.length + 31) + 31) < v3) | (v3 + (~0x1f & 32 + (~0x1f & varg3.length + 31) + 31) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg3 + varg3.length + 32 <= msg.data.length);

    CALLDATACOPY(v3.data, 4 + varg3 + 32, varg3.length);

    v3[varg3.length] = 0;

    require(varg4 == varg4 & 0xffffffffffffffffffffffff);

    require(varg6 == address(varg6));

    require(msg.data.length - 228 >= 64);

    if (!stor_0_1_1) {

        require(stor_0_0_0 < 1, Error('Initializable: contract is already initialized'));

        stor_0_0_0 = 1;

        v4 = 1;

    } else {

        v5 = v6 = 1 == 1;

        if (v6) {

            v5 = !this.code.size;

        }

        require(v5, Error('Initializable: contract is already initialized'));

        v4 = v7 = 0;

    }

    if (v4) {

        stor_0_1_1 = 1;

    }

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    _owner = msg.sender;

    emit OwnershipTransferred(_owner, msg.sender);

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    v8 = v9 = v0.data;

    v10 = 0x3f0b(_name.length);

    if (v0.length) {

        if (31 < v0.length) {

            _name.length = 1 + (v0.length + v0.length);

            if (v0.length) {

                while (v9 + v0.length > v8) {

                    STORAGE[v11] = MEM[v8];

                    v8 += 32;

                    v11 += 1;

                }

            }

        } else {

            _name.length = v0.length + v0.length | ~0xff & MEM[v9];

        }

    } else {

        _name.length = 0;

    }

    while (v12 + (31 + v10 >> 5) > v11) {

        STORAGE[v11] = 0;

        v11 += 1;

    }

    v13 = v14 = v1.data;

    v15 = 0x3f0b(_symbol.length);

    if (v1.length) {

        if (31 < v1.length) {

            _symbol.length = 1 + (v1.length + v1.length);

            if (v1.length) {

                while (v14 + v1.length > v13) {

                    STORAGE[v16] = MEM[v13];

                    v13 += 32;

                    v16 += 1;

                }

            }

        } else {

            _symbol.length = v1.length + v1.length | ~0xff & MEM[v14];

        }

    } else {

        _symbol.length = 0;

    }

    while (v17 + (31 + v15 >> 5) > v16) {

        STORAGE[v16] = 0;

        v16 += 1;

    }

    0x30a0();

    0x30a0();

    0x30a0();

    0x30a0();

    require(varg4 & 0xffffffffffffffffffffffff <= 10000, Error('ERC721Base: Royalty limit must be below 100%'));

    _royaltyLimit = varg4;

    v18 = v19 = v2.data;

    v20 = 0x3f0b(_contractURI.length);

    if (v2.length) {

        if (31 < v2.length) {

            _contractURI.length = 1 + (v2.length + v2.length);

            if (v2.length) {

                while (v19 + v2.length > v18) {

                    STORAGE[v21] = MEM[v18];

                    v18 += 32;

                    v21 += 1;

                }

            }

        } else {

            _contractURI.length = v2.length + v2.length | ~0xff & MEM[v19];

        }

    } else {

        _contractURI.length = 0;

    }

    while (v22 + (31 + v20 >> 5) > v21) {

        STORAGE[v21] = 0;

        v21 += 1;

    }

    v23 = v24 = v3.data;

    v25 = 0x3f0b(array_229.length);

    if (v3.length) {

        if (31 < v3.length) {

            array_229.length = 1 + (v3.length + v3.length);

            if (v3.length) {

                while (v24 + v3.length > v23) {

                    STORAGE[v26] = MEM[v23];

                    v23 += 32;

                    v26 += 1;

                }

            }

        } else {

            array_229.length = v3.length + v3.length | ~0xff & MEM[v24];

        }

    } else {

        array_229.length = 0;

    }

    while (v27 + (31 + v25 >> 5) > v26) {

        STORAGE[v26] = 0;

        v26 += 1;

    }

    stor_22a = 0;

    _mintingCharge = varg5;

    _broker = varg6;

    _openForAll = 0x1 | ~0xff & _openForAll;

    _brokerage = varg7;

    _lazyMint = varg8;

    if (v4) {

        stor_0_1_1 = 0;

        emit Initialized(1);

    }

}
