function initialize(address varg0, address varg1, uint96 varg2, address varg3, string varg4, string varg5, string varg6, address varg7) public nonPayable { 

    require(msg.data.length - 4 >= 384);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 == varg2);

    require(varg3 == varg3);

    require(varg4 <= 0xffffffffffffffff);

    require(4 + varg4 + 31 < msg.data.length);

    require(varg4.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](varg4.length);

    require(!((v0 + (~0x1f & 32 + (~0x1f & varg4.length + 31) + 31) < v0) | (v0 + (~0x1f & 32 + (~0x1f & varg4.length + 31) + 31) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    require(varg4.data + varg4.length <= msg.data.length);

    CALLDATACOPY(v0.data, varg4.data, varg4.length);

    v0[varg4.length] = 0;

    require(varg5 <= 0xffffffffffffffff);

    require(4 + varg5 + 31 < msg.data.length);

    require(varg5.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v1 = new bytes[](varg5.length);

    require(!((v1 + (~0x1f & 32 + (~0x1f & varg5.length + 31) + 31) < v1) | (v1 + (~0x1f & 32 + (~0x1f & varg5.length + 31) + 31) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    require(varg5.data + varg5.length <= msg.data.length);

    CALLDATACOPY(v1.data, varg5.data, varg5.length);

    v1[varg5.length] = 0;

    require(varg6 <= 0xffffffffffffffff);

    require(4 + varg6 + 31 < msg.data.length);

    require(varg6.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v2 = new bytes[](varg6.length);

    require(!((v2 + (~0x1f & 32 + (~0x1f & varg6.length + 31) + 31) < v2) | (v2 + (~0x1f & 32 + (~0x1f & varg6.length + 31) + 31) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    require(varg6.data + varg6.length <= msg.data.length);

    CALLDATACOPY(v2.data, varg6.data, varg6.length);

    v2[varg6.length] = 0;

    require(varg7 == varg7);

    v3 = v4 = 260;

    v5 = v6 = 0;

    require(291 < msg.data.length, v6, v6);

    v7 = v8 = MEM[64];

    require(!((v8 + 128 > 0xffffffffffffffff) | (v8 + 128 < v8)), Panic(65)); // failed memory allocation (too much memory)

    MEM[64] = v8 + 128;

    require(msg.data.length >= 388, v6, v6);

    while (v5 < 4) {

        MEM[v7] = msg.data[v3];

        v7 += 32;

        v3 = v3 + 32;

        v5 += 1;

    }

    if (stor_0_1_1) {

        v9 = v10 = !this.code.size;

    } else {

        v9 = v11 = !_initialize;

    }

    require(v9, Error('Initializable: contract is already initialized'));

    if (!stor_0_1_1) {

        stor_0_0_1 = 257;

    }

    if (stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_1_1) {

        v12 = v13 = !this.code.size;

    } else {

        v12 = v14 = !stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_0_0;

    }

    require(v12, Error('ERC721A__Initializable: contract is already initialized'));

    if (!stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_1_1) {

        stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_0_1 = 257;

    }

    if (stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_1_1) {

        if (stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_1_1) {

            v15 = v16 = v17.data;

            v18 = 0x36c6(_name.length);

            v19 = v20 = _name.data;

            if (v17.length) {

                if (31 < v17.length) {

                    _name = 43;

                    if (v17.length) {

                        while (v16 + v17.length > v15) {

                            STORAGE[v19] = MEM[v15];

                            v15 += 32;

                            v19 += 1;

                        }

                    }

                } else {

                    _name = 0x2a | bytes31('Dragaan (Never Again)');

                }

            } else {

                _name = 0;

            }

            while (v20 + (31 + v18 >> 5) > v19) {

                STORAGE[v19] = 0;

                v19 += 1;

            }

            v21 = v22 = v23.data;

            v24 = 0x36c6(_symbol.length);

            v25 = v26 = _symbol.data;

            if (v23.length) {

                if (31 < v23.length) {

                    _symbol = 7;

                    if (v23.length) {

                        while (v22 + v23.length > v21) {

                            STORAGE[v25] = MEM[v21];

                            v21 += 32;

                            v25 += 1;

                        }

                    }

                } else {

                    _symbol = 0x6 | bytes31(0x4145310000000000000000000000000000000000000000000000000000000000);

                }

            } else {

                _symbol = 0;

            }

            while (v26 + (31 + v24 >> 5) > v25) {

                STORAGE[v25] = 0;

                v25 += 1;

            }

            stor_2569078dfb4b0305704d3008e7403993ae9601b85f7ae5e742de3de8f8011c40 = 1;

            0x2401(varg7, 0);

            0x2401(varg7, 0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1);

            0x2401(varg0, 0x71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ceb1);

            0x2401(varg7, 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a);

            0x2401(varg0, 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a);

            stor_132_0_19 = varg0;

            _mintRoyaltyReceiver = varg3;

            0x2846(varg2, varg1);

            v27 = v28 = v0.data;

            v29 = 0x36c6(array_12e.length);

            v30 = v31 = array_12e.data;

            if (v0.length) {

                if (31 < v0.length) {

                    array_12e = 1 + (v0.length + v0.length);

                    if (v0.length) {

                        while (v28 + v0.length > v27) {

                            STORAGE[v30] = MEM[v27];

                            v27 += 32;

                            v30 += 1;

                        }

                    }

                } else {

                    array_12e = v0.length + v0.length | bytes31(MEM[v28]);

                }

            } else {

                array_12e = 0;

            }

            while (v31 + (31 + v29 >> 5) > v30) {

                STORAGE[v30] = 0;

                v30 += 1;

            }

            v32 = v33 = v1.data;

            v34 = 0x36c6(_baseuri2.length);

            v35 = v36 = _baseuri2.data;

            if (v1.length) {

                if (31 < v1.length) {

                    _baseuri2 = 1 + (v1.length + v1.length);

                    if (v1.length) {

                        while (v33 + v1.length > v32) {

                            STORAGE[v35] = MEM[v32];

                            v32 += 32;

                            v35 += 1;

                        }

                    }

                } else {

                    _baseuri2 = v1.length + v1.length | bytes31(MEM[v33]);

                }

            } else {

                _baseuri2 = 0;

            }

            while (v36 + (31 + v34 >> 5) > v35) {

                STORAGE[v35] = 0;

                v35 += 1;

            }

            v37 = v38 = v2.data;

            v39 = 0x36c6(_contractURI.length);

            v40 = v41 = _contractURI.data;

            if (v2.length) {

                if (31 < v2.length) {

                    _contractURI = 1 + (v2.length + v2.length);

                    if (v2.length) {

                        while (v38 + v2.length > v37) {

                            STORAGE[v40] = MEM[v37];

                            v37 += 32;

                            v40 += 1;

                        }

                    }

                } else {

                    _contractURI = v2.length + v2.length | bytes31(MEM[v38]);

                }

            } else {

                _contractURI = 0;

            }

            while (v41 + (31 + v39 >> 5) > v40) {

                STORAGE[v40] = 0;

                v40 += 1;

            }

            _maxMintAmount = MEM[v8];

            _initialPrice = MEM[v8 + 32];

            _startedAt = MEM[v8 + 64];

            _exclusiveAmount = MEM[v8 + 96];

            if (!stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_1_1) {

                stor_ee151c8401928dc223602bb187aff91b9a56c7cae5476ef1b3287b085a16c85f_1_1 = 0;

            }

            if (!stor_0_1_1) {

                stor_0_1_1 = 0;

            }

            exit;

        } else {

            goto 0xa6b0x2808B0x1792B0x687;

        }

    }

    revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721A__Initializable: contract is not initializing', 'ERC721A__Initializable: contract is not initializing'));

}
