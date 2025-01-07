function 0x3458(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = address(varg2);

    v1 = v2 = !(0xff & __isBlacklisted[v0]);

    if (v2) {

        v3 = address(varg1);

        v1 = v4 = !(0xff & __isBlacklisted[v3]);

    }

    require(v1, Error('This address is blacklisted'));

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v5 = v6 = address(varg2) != _owner;

    if (v6) {

        v5 = v7 = address(varg1) != _owner;

    }

    if (v5) {

        require(varg0 <= __getMaxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

    }

    v8 = v9 = 0x1a47(this);

    if (v9 >= __getMaxTxAmount) {

        v8 = v10 = __getMaxTxAmount;

    }

    v11 = v12 = v8 >= stor_17;

    v11 = v13 = !stor_15_20_20;

    if (!stor_15_20_20) {

        v11 = v14 = _swapEnabled;

    }

    if (v11) {

        v11 = v15 = address(varg2) != 0x810c21e99f7dc6d598bb6ede2b8d60ecf949c9df;

    }

    if (v11) {

        0x3bb3(v8);

        if (this.balance > 0) {

            0x3e97(this.balance);

        }

    }

    v16 = v17 = 1;

    v18 = address(varg2);

    v19 = v20 = 0xff & _isExcludedFromFee[v18];

    if (!v20) {

        v21 = address(varg1);

        v19 = v22 = 0xff & _isExcludedFromFee[v21];

    }

    if (v19) {

        v16 = v23 = 0;

    }

    if (!v16) {

        v24 = v25 = stor_11 == 0;

        if (v25) {

            v24 = stor_12 == 0;

        }

        if (!v24) {

            stor_13 = stor_11;

            stor_14 = stor_12;

            stor_11 = 0;

            stor_12 = 0;

        }

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

                    0x4c0e(varg0, varg1, varg2);

                } else {

                    v42, v43, v44, v45, v46, v47 = 0x3b02(varg0);

                    v48 = address(varg2);

                    v49 = 0x3b69(varg0, map_5[v48]);

                    v50 = address(varg2);

                    map_5[v50] = v49;

                    v51 = address(varg2);

                    v52 = 0x3b69(v47, _balanceOf[v51]);

                    v53 = address(varg2);

                    _balanceOf[v53] = v52;

                    v54 = address(varg1);

                    require(_balanceOf[v54] + v44 >= _balanceOf[v54], Error('SafeMath: addition overflow'));

                    v55 = address(varg1);

                    map_5[v55] = _balanceOf[v54] + v44;

                    v56 = address(varg1);

                    require(_balanceOf[v56] + v46 >= _balanceOf[v56], Error('SafeMath: addition overflow'));

                    v57 = address(varg1);

                    _balanceOf[v57] = _balanceOf[v56] + v46;

                    0x50e2(v42);

                    0x5287(v43, v45);

                    emit Transfer(address(varg2), address(varg1), v44);

                }

            } else {

                0x4c0e(varg0, varg1, varg2);

            }

        } else {

            v58, v59, v60, v61, v62, v63 = 0x3b02(varg0);

            v64 = address(varg2);

            v65 = 0x3b69(v63, _balanceOf[v64]);

            v66 = address(varg2);

            _balanceOf[v66] = v65;

            v67 = address(varg1);

            require(_balanceOf[v67] + v60 >= _balanceOf[v67], Error('SafeMath: addition overflow'));

            v68 = address(varg1);

            map_5[v68] = _balanceOf[v67] + v60;

            v69 = address(varg1);

            require(_balanceOf[v69] + v62 >= _balanceOf[v69], Error('SafeMath: addition overflow'));

            v70 = address(varg1);

            _balanceOf[v70] = _balanceOf[v69] + v62;

            0x50e2(v58);

            0x5287(v59, v61);

            emit Transfer(address(varg2), address(varg1), v60);

        }

    } else {

        v71, v72, v73, v74, v75, v76 = 0x3b02(varg0);

        v77 = address(varg2);

        v78 = 0x3b69(varg0, map_5[v77]);

        v79 = address(varg2);

        map_5[v79] = v78;

        v80 = address(varg2);

        v81 = 0x3b69(v76, _balanceOf[v80]);

        v82 = address(varg2);

        _balanceOf[v82] = v81;

        v83 = address(varg1);

        require(_balanceOf[v83] + v75 >= _balanceOf[v83], Error('SafeMath: addition overflow'));

        v84 = address(varg1);

        _balanceOf[v84] = _balanceOf[v83] + v75;

        0x50e2(v71);

        0x5287(v72, v74);

        emit Transfer(address(varg2), address(varg1), v73);

    }

    if (!v16) {

        stor_11 = stor_13;

        stor_12 = stor_14;

    }

}
