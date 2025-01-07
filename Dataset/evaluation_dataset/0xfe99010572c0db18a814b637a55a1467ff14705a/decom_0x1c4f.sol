function 0x1c4f(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = address(varg2);

    v1 = v2 = !(0xff & __isBlacklisted[v0]);

    if (v2) {

        v3 = address(varg1);

        v1 = v4 = !(0xff & __isBlacklisted[v3]);

    }

    require(v1, Error('This address is blacklisted'));

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v5 = v6 = address(varg2) != _owner;

    if (v6) {

        v5 = v7 = address(varg1) != _owner;

    }

    if (v5) {

        require(varg0 <= __getMaxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

    }

    v8 = v9 = 0x1045(this);

    if (v9 >= __getMaxTxAmount) {

        v8 = v10 = __getMaxTxAmount;

    }

    v11 = v12 = v8 >= stor_17;

    v11 = v13 = !stor_15_20_20;

    if (!stor_15_20_20) {

        v11 = v14 = _swapEnabled;

    }

    if (v11) {

        v11 = v15 = address(varg2) != 0xa485702669b51400d66705638f54ded4aecffbea;

    }

    if (v11) {

        0x213a(v8);

        if (this.balance) {

            0x2371(this.balance);

        }

    }

    v16 = address(varg2);

    v17 = v18 = 1;

    v19 = v20 = 0xff & _isExcludedFromFee[v16];

    if (!v20) {

        v21 = address(varg1);

        v19 = v22 = 0xff & _isExcludedFromFee[v21];

    }

    if (v19) {

        v17 = v23 = 0;

    }

    if (!v17) {

        v24 = v25 = !stor_11;

        if (v25) {

            v24 = !stor_12;

        }

        if (!v24) {

            stor_13 = stor_11;

            stor_14 = stor_12;

            stor_11 = 0;

            stor_12 = 0;

        }

        goto 0x23cbB0x1f2b;

    }

    v26 = address(varg2);

    v27 = v28 = 0xff & _isExcluded[v26];

    if (v28) {

        v29 = address(varg1);

        v27 = !(0xff & _isExcluded[v29]);

    }

    if (!v27) {

        v30 = address(varg2);

        v31 = v32 = !(0xff & _isExcluded[v30]);

        if (v32) {

            v33 = address(varg1);

            v31 = 0xff & _isExcluded[v33];

        }

        if (!v31) {

            v34 = address(varg2);

            v35 = v36 = !(0xff & _isExcluded[v34]);

            if (v36) {

                v37 = address(varg1);

                v35 = !(0xff & _isExcluded[v37]);

            }

            if (!v35) {

                v38 = address(varg2);

                v39 = v40 = 0xff & _isExcluded[v38];

                if (v40) {

                    v41 = address(varg1);

                    v39 = 0xff & _isExcluded[v41];

                }

                if (!v39) {

                    0x29dd(varg0, varg1, varg2);

                } else {

                    v42, v43, v44, v45, v46, v47 = 0x209c(varg0);

                    v48 = address(varg2);

                    v49 = 0x20f8(varg0, map_5[v48]);

                    v50 = address(varg2);

                    map_5[v50] = v49;

                    v51 = 0x20f8(v47, _balanceOf[v50]);

                    v52 = address(varg2);

                    _balanceOf[v52] = v51;

                    v53 = address(varg1);

                    require(v44 + _balanceOf[v53] >= _balanceOf[v53], Error('SafeMath: addition overflow'));

                    v54 = address(varg1);

                    map_5[v54] = v44 + _balanceOf[v53];

                    require(v46 + _balanceOf[v54] >= _balanceOf[v54], Error('SafeMath: addition overflow'));

                    v55 = address(varg1);

                    _balanceOf[v55] = v46 + _balanceOf[v54];

                    0x2aa2(v42);

                    v56 = 0x20f8(v45, _tokenFromReflection);

                    _tokenFromReflection = v56;

                    require(v43 + _totalFees >= _totalFees, Error('SafeMath: addition overflow'));

                    _totalFees += v43;

                    emit Transfer(address(varg2), address(varg1), v44);

                }

            } else {

                0x29dd(varg0, varg1, varg2);

            }

        } else {

            v57, v58, v59, v60, v61, v62 = 0x209c(varg0);

            v63 = address(varg2);

            v64 = 0x20f8(v62, _balanceOf[v63]);

            v65 = address(varg2);

            _balanceOf[v65] = v64;

            v66 = address(varg1);

            require(v59 + _balanceOf[v66] >= _balanceOf[v66], Error('SafeMath: addition overflow'));

            v67 = address(varg1);

            map_5[v67] = v59 + _balanceOf[v66];

            require(v61 + _balanceOf[v67] >= _balanceOf[v67], Error('SafeMath: addition overflow'));

            v68 = address(varg1);

            _balanceOf[v68] = v61 + _balanceOf[v67];

            0x2aa2(v57);

            v69 = 0x20f8(v60, _tokenFromReflection);

            _tokenFromReflection = v69;

            require(v58 + _totalFees >= _totalFees, Error('SafeMath: addition overflow'));

            _totalFees += v58;

            emit Transfer(address(varg2), address(varg1), v59);

        }

    } else {

        v70, v71, v72, v73, v74, v75 = 0x209c(varg0);

        v76 = address(varg2);

        v77 = 0x20f8(varg0, map_5[v76]);

        v78 = address(varg2);

        map_5[v78] = v77;

        v79 = 0x20f8(v75, _balanceOf[v78]);

        v80 = address(varg2);

        _balanceOf[v80] = v79;

        v81 = address(varg1);

        require(v74 + _balanceOf[v80] >= _balanceOf[v80], Error('SafeMath: addition overflow'));

        v82 = address(varg1);

        _balanceOf[v82] = v74 + _balanceOf[v80];

        0x2aa2(v70);

        v83 = 0x20f8(v73, _tokenFromReflection);

        _tokenFromReflection = v83;

        require(v71 + _totalFees >= _totalFees, Error('SafeMath: addition overflow'));

        _totalFees += v71;

        emit Transfer(address(varg2), address(varg1), v72);

    }

    if (!v17) {

        stor_11 = stor_13;

        stor_12 = stor_14;

        goto 0x1f37;

    }

}
