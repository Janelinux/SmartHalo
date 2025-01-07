function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg0, Error('TOKEN20: transfer from the zero address'));

    require(varg1, Error('TOKEN20: transfer to the zero address'));

    require(varg2 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = 1;

    v2 = v3 = 0xff & _isCharity[varg0];

    if (!v3) {

        v2 = v4 = 0xff & _isCharity[varg1];

    }

    if (!v2) {

        v2 = 0xff & _isExcluded[varg1];

    }

    if (v2) {

        v0 = v5 = 0;

    }

    if (!v0) {

        v6 = v7 = !__TAX_FEE;

        if (v7) {

            v6 = v8 = !__BURN_FEE;

        }

        if (v6) {

            v6 = !__CHARITY_FEE;

        }

        if (!v6) {

            _transfer = __TAX_FEE;

            stor_17 = __BURN_FEE;

            stor_18 = __CHARITY_FEE;

            __TAX_FEE = 0;

            __BURN_FEE = 0;

            __CHARITY_FEE = 0;

        } else {

            goto 0x1150B0x528B0x25e;

        }

    }

    v9 = v10 = 0xff & _isExcluded[varg0];

    if (v10) {

        v9 = !(0xff & _isExcluded[varg1]);

    }

    if (!v9) {

        v11 = v12 = !(0xff & _isExcluded[varg0]);

        if (v12) {

            v11 = 0xff & _isExcluded[varg1];

        }

        if (!v11) {

            v13 = v14 = !(0xff & _isExcluded[varg0]);

            if (v14) {

                v13 = !(0xff & _isExcluded[varg1]);

            }

            if (!v13) {

                v15 = v16 = 0xff & _isExcluded[varg0];

                if (v16) {

                    v15 = 0xff & _isExcluded[varg1];

                }

                if (!v15) {

                    v17 = 0x1300();

                    v18, v19, v20, v21, v22, v23, v24, v25 = 0x13c4();

                    v26 = 0x1a3a(0, v19);

                    v27 = 0x1a3a(0, v18);

                    v28 = 0x1448(v24, _burn[0]);

                    _burn[0] = v28;

                    v29 = _SafeAdd(v23, _burn[address(v17)]);

                    _burn[address(v17)] = v29;

                    v30 = 0x1300();

                    v31 = 0x1a3a(v30, v32);

                    v33 = _SafeAdd(v31, _burn[_feeAddress]);

                    _burn[_feeAddress] = v33;

                    v34 = _SafeAdd(v32, map_2[_feeAddress]);

                    map_2[_feeAddress] = v34;

                    emit Transfer(0, _feeAddress);

                    v35, v36, v37 = 0x1c2c(5597, v27, v26, 0, v18, v19, 5611);

                    emit Transfer(address(v23), address(v22), v27);

                    goto 0x12a4B0x528B0x25e;

                } else {

                    v38 = 0x1300();

                    v39, v40, v41, v42, v43, v44, v45, v46 = 0x13c4();

                    v47 = 0x1a3a(0, v40);

                    v48 = 0x1a3a(0, v39);

                    v49 = 0x1448(0, map_2[0]);

                    map_2[0] = v49;

                    v50 = 0x1448(v45, map_2[0]);

                    _burn[0] = v50;

                    v51 = _SafeAdd(v42, map_2[address(v38)]);

                    map_2[address(v38)] = v51;

                    v52 = _SafeAdd(v44, map_2[address(v38)]);

                    _burn[address(v38)] = v52;

                    v53 = 0x1300();

                    v54 = 0x1a3a(v53, v32);

                    v55 = _SafeAdd(v54, _burn[_feeAddress]);

                    _burn[_feeAddress] = v55;

                    v56 = _SafeAdd(v32, map_2[_feeAddress]);

                    map_2[_feeAddress] = v56;

                    emit Transfer(0, _feeAddress);

                    v57, v58, v59 = 0x1c2c(5597, v48, v47, 0, v39, v40, 5611);

                    emit Transfer(address(v44), address(v43), v48);

                    goto 0x11a1B0x528B0x25e;

                }

            } else {

                v60 = 0x1300();

                v61, v62, v63, v64, v65, v66, v67, v68 = 0x13c4();

                v69 = 0x1a3a(0, v62);

                v70 = 0x1a3a(0, v61);

                v71 = 0x1448(v67, _burn[0]);

                _burn[0] = v71;

                v72 = _SafeAdd(v66, _burn[address(v60)]);

                _burn[address(v60)] = v72;

                v73 = 0x1300();

                v74 = 0x1a3a(v73, v32);

                v75 = _SafeAdd(v74, _burn[_feeAddress]);

                _burn[_feeAddress] = v75;

                v76 = _SafeAdd(v32, map_2[_feeAddress]);

                map_2[_feeAddress] = v76;

                emit Transfer(0, _feeAddress);

                v77, v78, v79 = 0x1c2c(5597, v70, v69, 0, v61, v62, 5611);

                emit Transfer(address(v66), address(v65), v70);

                goto 0x11a1B0x528B0x25e;

            }

        } else {

            v80 = 0x1300();

            v81, v82, v83, v84, v85, v86, v87, v88 = 0x13c4();

            v89 = 0x1a3a(0, v82);

            v90 = 0x1a3a(0, v81);

            v91 = 0x1448(v87, _burn[0]);

            _burn[0] = v91;

            v92 = _SafeAdd(v84, map_2[address(v80)]);

            map_2[address(v80)] = v92;

            v93 = _SafeAdd(v86, map_2[address(v80)]);

            _burn[address(v80)] = v93;

            v94 = 0x1300();

            v95 = 0x1a3a(v94, v32);

            v96 = _SafeAdd(v95, _burn[_feeAddress]);

            _burn[_feeAddress] = v96;

            v97 = _SafeAdd(v32, map_2[_feeAddress]);

            map_2[_feeAddress] = v97;

            emit Transfer(0, _feeAddress);

            v98, v99, v100 = 0x1c2c(5597, v90, v89, 0, v81, v82, 5611);

            emit Transfer(address(v86), address(v85), v90);

            goto 0x11a1B0x528B0x25e;

        }

    } else {

        v101 = 0x1300();

        v102, v103, v104, v105, v106, v107, v108, v109 = 0x13c4();

        v110 = 0x1a3a(0, v103);

        v111 = 0x1a3a(0, v102);

        v112 = 0x1448(0, map_2[0]);

        map_2[0] = v112;

        v113 = 0x1448(v108, map_2[0]);

        _burn[0] = v113;

        v114 = _SafeAdd(v107, _burn[address(v101)]);

        _burn[address(v101)] = v114;

        v115 = 0x1300();

        v116 = 0x1a3a(v115, v32);

        v117 = _SafeAdd(v116, _burn[_feeAddress]);

        _burn[_feeAddress] = v117;

        v118 = _SafeAdd(v32, map_2[_feeAddress]);

        map_2[_feeAddress] = v118;

        emit Transfer(0, _feeAddress);

        v119, v120, v121 = 0x1c2c(5597, v111, v110, 0, v102, v103, 5611);

        emit Transfer(address(v107), address(v106), v111);

    }

    if (!varg2) {

        __TAX_FEE = _transfer;

        __BURN_FEE = stor_17;

        __CHARITY_FEE = stor_18;

        goto 0x12c00xfa9B0x528B0x25e;

    }

    v122 = new struct(3);

    v122.word0 = 42;

    v123 = 0x12c6(v122, 0, _increaseAllowance[msg.sender]);

    0xe81(v123, msg.sender, varg1);

    return 1;

}
