function 0x81288c86(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4) public nonPayable { 

    require(msg.data.length - 4 >= 160);

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    v0 = 0x4f63(varg1.length);

    require(!((MEM[64] + (~0x1f & v0 + 31) < MEM[64]) | (MEM[64] + (~0x1f & v0 + 31) > 0xffffffffffffffff)), Panic(65));

    v1 = v2 = MEM[64] + 32;

    require(32 + (4 + varg1 + (varg1.length << 5)) <= msg.data.length);

    v3 = v4 = 4 + varg1 + 32;

    while (v3 < 32 + (4 + varg1 + (varg1.length << 5))) {

        require(msg.data[v3] == address(msg.data[v3]));

        MEM[v1] = msg.data[v3];

        v1 += 32;

        v3 += 32;

    }

    require(varg2 == varg2 & 0xffffff);

    require(varg3 == address(varg3));

    if (2 == varg1.length) {

        if (varg4) {

            if (!_nft) {

                v5 = 0x4151(MEM[64]);

                if (v5) {

                    if (varg0) {

                        require(msg.sender.code.size);

                        v6, v7, v8, v9 = msg.sender.internalParams().gas(msg.gas);

                        require(v6); // checks call status, propagates error data on error

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                        v10 = new struct(3);

                        require(!((v10 + 96 < v10) | (v10 + 96 > 0xffffffffffffffff)), Panic(65));

                        require(v7 == address(v7));

                        v10.word0 = v7;

                        require(v8 == address(v8));

                        v10.word1 = v8;

                        require(v9 == address(v9));

                        v10.word2 = v9;

                        v11 = v12 = varg1.length;

                        if (varg1.length) {

                            require((address(v10.word0)).code.size);

                            v13, v14 = address(v10.word0).maxTokensPerVault().gas(msg.gas);

                            require(v13); // checks call status, propagates error data on error

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                            v11 = varg1.length <= v14;

                        }

                        if (v11) {

                            v15 = v16 = 0;

                            while (v15 < varg1.length) {

                                if (v15 < varg1.length) {

                                    break;

                                }

                                require(v15 < varg1.length, Panic(50));

                                if ((address(v10.word0)).code.size) {

                                    break;

                                }

                                require((address(v10.word0)).code.size);

                                v17, v18 = address(v10.word0).hasPermission(address(MEM[(v15 << 5) + MEM[64] + 32]), 3).gas(msg.gas);

                                if (v17) {

                                    break;

                                }

                                require(v17); // checks call status, propagates error data on error

                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                require(v18 == v18);

                                if (v18) {

                                    v15 = 0x5752(v15);

                                } else {

                                    v19 = new array[](v20.length);

                                    v21 = v22 = 0;

                                    while (v21 < v20.length) {

                                        v19[v21] = v20[v21];

                                        v21 += 32;

                                    }

                                    if (v21 > v20.length) {

                                        v19[v20.length] = 0;

                                        goto 0x53d9B0x53edB0x3731B0x3b8;

                                    }

                                    revert(Error(v19, v23, 0x4652420000000000000000000000000000000000000000000000000000000000));

                                }

                            }

                            _vaultGovernance = msg.sender;

                            v24 = v25 = MEM[64] + 32;

                            _vaultTokens.length = varg1.length;

                            if (varg1.length) {

                                while (v25 + (varg1.length << 5) > v24) {

                                    STORAGE[v26] = address(MEM[v24]) | ~0xffffffffffffffffffffffffffffffffffffffff & STORAGE[v26];

                                    v24 = v24 + 32;

                                    v26 = v26 + 1;

                                }

                            }

                            while (v27 + _vaultTokens.length > v26) {

                                STORAGE[v26] = 0;

                                v26 += 1;

                            }

                            _nft = varg0;

                            v28 = v29 = 0;

                            while (v28 < _vaultTokens.length) {

                                v30 = _SafeAdd(1, v28);

                                if (v28 < varg1.length) {

                                    break;

                                }

                                require(v28 < varg1.length, Panic(50));

                                _isVaultToken[address(MEM[32 + (v28 << 5) + MEM[64]])] = v30;

                                require(v28 < varg1.length, Panic(50));

                                require((address(MEM[32 + (v28 << 5) + MEM[64]])).code.size);

                                v31, v32 = address(MEM[32 + (v28 << 5) + MEM[64]]).decimals().gas(msg.gas);

                                require(v31); // checks call status, propagates error data on error

                                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                                require(v32 == v32 & 0xff);

                                require(2, Panic(18));

                                v33 = 0x5cb1(10, (v32 & 0xff) >> 1 & 0xff);

                                array_5.length = array_5.length + 1;

                                array_5[array_5.length] = v33;

                                v28 = 0x5752(v28);

                            }

                            v34 = new array[](varg1.length);

                            v35 = v36 = v34.data;

                            v37 = v38 = MEM[64] + 32;

                            v39 = v40 = 0;

                            while (v39 < varg1.length) {

                                MEM[v35] = address(MEM[v37]);

                                v35 += 32;

                                v37 += 32;

                                v39 += 1;

                            }

                            emit 0xf043e55a1ce0d7ce25125ccbc2800b540d83e21abf7250f0156c2091a28b221(tx.origin, msg.sender, v34, varg0);

                            require(_vaultGovernance.code.size);

                            v41, v42, v43 = _vaultGovernance.delayedProtocolParams().gas(msg.gas);

                            require(v41); // checks call status, propagates error data on error

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

                            v44 = new struct(2);

                            require(!((v44 + 64 > 0xffffffffffffffff) | (v44 + 64 < v44)), Panic(65));

                            require(v42 == address(v42));

                            v44.word0 = v42;

                            require(v43 == address(v43));

                            v44.word1 = v43;

                            _positionManager = v44.word0;

                            require((address(v44.word0)).code.size);

                            v45, v46 = address(v44.word0).factory().gas(msg.gas);

                            require(v45); // checks call status, propagates error data on error

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                            require(v46 == address(v46));

                            require(0 < _vaultTokens.length, Panic(50));

                            require(1 < _vaultTokens.length, Panic(50));

                            require((address(v46)).code.size);

                            v47, v48 = address(v46).getPool(address(_vaultTokens[0x0]), address(_vaultTokens[0x1]), varg2 & 0xffffff).gas(msg.gas);

                            require(v47); // checks call status, propagates error data on error

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                            require(v48 == address(v48));

                            _pool = v48;

                            stor_a_0_19 = varg3;

                            stor_8 = varg4;

                            if (address(v48)) {

                                exit;

                            } else {

                                v49 = new array[](v50.length);

                                v51 = v52 = 0;

                                while (v51 < v50.length) {

                                    v49[v51] = v50[v51];

                                    v51 += 32;

                                }

                                if (v51 > v50.length) {

                                    v49[v50.length] = 0;

                                    goto 0x53d9B0x53edB0x2059B0x3b8;

                                }

                                revert(Error(v49, v23, 0x4e46000000000000000000000000000000000000000000000000000000000000));

                            }

                        } else {

                            v53 = new array[](v54.length);

                            v55 = v56 = 0;

                            while (v55 < v54.length) {

                                v53[v55] = v54[v55];

                                v55 += 32;

                            }

                            if (v55 > v54.length) {

                                v53[v54.length] = 0;

                                goto 0x53d9B0x53edB0x3640B0x3b8;

                            }

                            revert(Error(v53, v23, 0x494e560000000000000000000000000000000000000000000000000000000000));

                        }

                    } else {

                        v57 = new array[](v58.length);

                        v59 = v60 = 0;

                        while (v59 < v58.length) {

                            v57[v59] = v58[v59];

                            v59 += 32;

                        }

                        if (v59 > v58.length) {

                            v57[v58.length] = 0;

                            goto 0x53d9B0x53edB0x350dB0x3b8;

                        }

                        revert(Error(v57, v23, 0x565a000000000000000000000000000000000000000000000000000000000000));

                    }

                } else {

                    v61 = new array[](v62.length);

                    v63 = v64 = 0;

                    while (v63 < v62.length) {

                        v61[v63] = v62[v63];

                        v63 += 32;

                    }

                    if (v63 > v62.length) {

                        v61[v62.length] = 0;

                        goto 0x53d9B0x53edB0x34d5B0x3b8;

                    }

                    revert(Error(v61, v23, 0x494e5641));

                }

            } else {

                v65 = new array[](v66.length);

                v67 = v68 = 0;

                while (v67 < v66.length) {

                    v65[v67] = v66[v67];

                    v67 += 32;

                }

                if (v67 > v66.length) {

                    v65[v66.length] = 0;

                    goto 0x53d9B0x53edB0x3490B0x3b8;

                }

                revert(Error(v65, v23, 0x494e495400000000000000000000000000000000000000000000000000000000));

            }

        } else {

            v69 = new array[](v70.length);

            v71 = v72 = 0;

            while (v71 < v70.length) {

                v69[v71] = v70[v71];

                v71 += 32;

            }

            if (v71 > v70.length) {

                v69[v70.length] = 0;

                goto 0x53d9B0x53edB0x1df5B0x3b8;

            }

            revert(Error(v69, v23, 0x565a000000000000000000000000000000000000000000000000000000000000));

        }

    } else {

        v73 = new array[](v74.length);

        v75 = v76 = 0;

        while (v75 < v74.length) {

            v73[v75] = v74[v75];

            v75 += 32;

        }

        if (v75 > v74.length) {

            v73[v74.length] = 0;

            goto 0x53d9B0x53edB0x1dbdB0x3b8;

        }

        revert(Error(v73, v23, 0x494e560000000000000000000000000000000000000000000000000000000000));

    }

}
