function 0x1839(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 

    if (!varg0) {

        v0 = v1 = !__taxFee;

        if (v1) {

            v0 = !__marketingFee;

        }

        if (!v0) {

            stor_6 = __taxFee;

            stor_9 = __marketingFee;

            __taxFee = 0;

            __marketingFee = 0;

        } else {

            goto 0x1846;

        }

    }

    v2 = address(varg3);

    v3 = v4 = 0xff & _isExcludedFromReward[v2];

    if (v4) {

        v5 = address(varg2);

        v3 = v6 = !(0xff & _isExcludedFromReward[v5]);

    }

    if (!v3) {

        v7 = address(varg3);

        v8 = v9 = !(0xff & _isExcludedFromReward[v7]);

        if (v9) {

            v10 = address(varg2);

            v8 = v11 = 0xff & _isExcludedFromReward[v10];

        }

        if (!v8) {

            v12 = address(varg3);

            v13 = v14 = !(0xff & _isExcludedFromReward[v12]);

            if (v14) {

                v15 = address(varg2);

                v13 = v16 = !(0xff & _isExcludedFromReward[v15]);

            }

            if (!v13) {

                v17 = address(varg3);

                v18 = v19 = 0xff & _isExcludedFromReward[v17];

                if (v19) {

                    v20 = address(varg2);

                    v18 = v21 = 0xff & _isExcludedFromReward[v20];

                }

                if (!v18) {

                    0x1dc1(varg1, varg2, varg3);

                } else {

                    v22 = v23, v24 = v25, v24 = v26, v27, v28, v29 = v30 = 0x17a1(varg1);

                    v31 = address(varg3);

                    v32 = 0x1e74(varg1, owner_10[v31]);

                    v33 = address(varg3);

                    owner_10[v33] = v32;

                    v24 = v34 = owner_10[v33];

                    v35 = v36 = 7516;

                    while (1) {

                        v24 = _SafeSub(v24, v29);

                        goto {'0x1aee0x1e05B0x1985', '0x1d5c0x1e05B0x1985', '0x1aa60x1e05B0x1985'};

                        v35 = v37 = 6894;

                        require(v22 < _includeInReward.length, Panic(50));

                        v29 = v38 = owner_10[21];

                        continue;

                        v22 = 0x224a(v22);

                        if (v22 >= _includeInReward.length) {

                            break;

                        }

                        if (v22 >= _includeInReward.length) {

                            v39 = _SafeDiv(_totalSupply, stor_17);

                            if (v24 >= v39) {

                                goto 0x3345;

                            } else {

                                goto 0x3345;

                            }

                        }

                        require(v22 < _includeInReward.length, Panic(50));

                        v40 = owner_f[21] > v24;

                        if (owner_f[21] <= v24) {

                            require(v22 < _includeInReward.length, Panic(50));

                            v40 = v41 = owner_10[21] > v24;

                        }

                        if (!v40) {

                            v35 = v42 = 6822;

                            require(v22 < _includeInReward.length, Panic(50));

                            v29 = owner_f[21];

                            continue;

                        }

                    }

                    v43 = address(varg3);

                    owner_f[v43] = v24;

                    v44 = address(varg2);

                    v45 = _SafeAdd(v24, owner_10[v43]);

                    v46 = address(varg2);

                    owner_10[v46] = v45;

                    v47 = _SafeAdd(v28, owner_10[v46]);

                    v48 = address(varg2);

                    owner_f[v48] = v47;

                    0x1eca(v22);

                    v49 = 0x1e74(v27, stor_17);

                    stor_17 = v49;

                    v50 = _SafeAdd(v24, _totalFees);

                    _totalFees = v50;

                    emit Transfer(address(varg3), address(varg2), v24);

                    goto 0x3345;

                }

            } else {

                0x1dc1(varg1, varg2, varg3);

            }

        } else {

            v51, v52, v53, v54, v55, v56 = 0x17a1(varg1);

            v57 = address(varg3);

            v58 = 0x1e74(v56, owner_f[v57]);

            v59 = address(varg3);

            owner_f[v59] = v58;

            v60 = address(varg2);

            v61 = _SafeAdd(v53, owner_10[v59]);

            v62 = address(varg2);

            owner_10[v62] = v61;

            v63 = _SafeAdd(v55, owner_10[v62]);

            v64 = address(varg2);

            owner_f[v64] = v63;

            0x1eca(v51);

            v65 = 0x1e74(v54, stor_17);

            stor_17 = v65;

            v66 = _SafeAdd(v52, _totalFees);

            _totalFees = v66;

            emit Transfer(address(varg3), address(varg2), v53);

        }

    } else {

        v67, v68, v69, v70, v71, v72 = 0x17a1(varg1);

        v73 = address(varg3);

        v74 = 0x1e74(varg1, owner_10[v73]);

        v75 = address(varg3);

        owner_10[v75] = v74;

        v76 = 0x1e74(v72, owner_10[v75]);

        v77 = address(varg3);

        owner_f[v77] = v76;

        v78 = address(varg2);

        v79 = _SafeAdd(v71, owner_f[v77]);

        v80 = address(varg2);

        owner_f[v80] = v79;

        0x1eca(v67);

        v81 = 0x1e74(v70, stor_17);

        stor_17 = v81;

        v82 = _SafeAdd(v68, _totalFees);

        _totalFees = v82;

        emit Transfer(address(varg3), address(varg2), v69);

        goto 0x199a;

    }

    if (varg0) {

        return ;

    } else {

        __taxFee = stor_6;

        __marketingFee = stor_9;

        return ;

    }

}
