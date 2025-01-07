function 0x1a44(uint256 varg0, uint256 varg1) private { 

    require(address(v0) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = v2 = address(v0) != _owner;

    if (v2) {

        v1 = v3 = address(varg1) != _owner;

    }

    if (v1) {

        if (stor_13_23_23) {

            v4 = v5 = address(v0) != address(this);

            if (v5) {

                v4 = v6 = address(varg1) != address(this);

            }

            if (v4) {

                v4 = v7 = address(v0) != owner_12_0_19;

            }

            if (v4) {

                v4 = v8 = address(varg1) != owner_12_0_19;

            }

            if (v4) {

                v9 = v10 = msg.sender == owner_12_0_19;

                if (msg.sender != owner_12_0_19) {

                    v9 = v11 = msg.sender == owner_13_0_19;

                }

                require(v9, Error('ERR: Uniswap only'));

            }

        }

        if (address(v0) != address(this)) {

            require(varg0 <= stor_14);

            v12 = address(v0);

            v13 = v14 = !(0xff & map_7[v12]);

            if (v14) {

                v15 = address(varg1);

                v13 = v16 = !(0xff & map_7[v15]);

            }

            require(v13);

        }

        v17 = v18 = address(v0) == owner_13_0_19;

        if (v18) {

            v17 = v19 = address(varg1) != owner_12_0_19;

        }

        if (v17) {

            v20 = address(varg1);

            v17 = v21 = !(0xff & map_5[v20]);

        }

        if (v17) {

            v17 = v22 = stor_13_23_23;

        }

        if (v17) {

            v23 = address(varg1);

            require(map_8[v23] < block.timestamp);

            v24 = address(varg1);

            map_8[v24] = block.timestamp + 30;

        }

        v25 = 0xae2(this);

        v26 = v27 = !stor_13_21_21;

        if (!stor_13_21_21) {

            v26 = v28 = address(v0) != owner_13_0_19;

        }

        if (v26) {

            v26 = v29 = stor_13_22_22;

        }

        if (v26) {

            if (stor_13_23_23) {

                v30 = address(v0);

                require(map_8[v30] < block.timestamp - 360);

            }

            0x2547(v25);

            if (this.balance > 0) {

                0x23c8(this.balance);

            }

        }

    }

    v31 = v32 = 1;

    v33 = address(v0);

    v34 = v35 = 0xff & map_5[v33];

    if (!v35) {

        v36 = address(varg1);

        v34 = v37 = 0xff & map_5[v36];

    }

    if (v34) {

        v31 = v38 = 0;

    }

    if (!v31) {

        v39 = v40 = stor_c == 0;

        if (v40) {

            v39 = stor_d == 0;

        }

        if (!v39) {

            stor_e = stor_c;

            stor_f = stor_d;

            stor_c = 0;

            stor_d = 0;

        }

    }

    v41 = address(v0);

    v42 = v43 = 0xff & map_6[v41];

    if (v43) {

        v44 = address(varg1);

        v42 = v45 = !(0xff & map_6[v44]);

    }

    if (!v42) {

        v46 = address(v0);

        v47 = v48 = !(0xff & map_6[v46]);

        if (v48) {

            v49 = address(varg1);

            v47 = v50 = 0xff & map_6[v49];

        }

        if (!v47) {

            v51 = address(v0);

            v52 = v53 = 0xff & map_6[v51];

            if (v53) {

                v54 = address(varg1);

                v52 = v55 = 0xff & map_6[v54];

            }

            if (!v52) {

                v56, v57, v58, v59, v60, v61 = 0x38cd(varg0);

                v62 = address(v0);

                v63 = 0x3935(v61, _balanceOf[v62]);

                v64 = address(v0);

                _balanceOf[v64] = v63;

                v65 = address(varg1);

                require(_balanceOf[v65] + v60 >= _balanceOf[v65], Error('SafeMath: addition overflow'));

                v66 = address(varg1);

                _balanceOf[v66] = _balanceOf[v65] + v60;

                0x3a07(v56);

                0x3bac(v57, v59);

                emit Transfer(address(v0), address(varg1), v58);

            } else {

                v67, v68, v69, v70, v71, v72 = 0x38cd(varg0);

                v73 = address(v0);

                v74 = 0x3935(varg0, map_3[v73]);

                v75 = address(v0);

                map_3[v75] = v74;

                v76 = address(v0);

                v77 = 0x3935(v72, map_3[v76]);

                v78 = address(v0);

                _balanceOf[v78] = v77;

                v79 = address(varg1);

                require(map_3[v79] + v69 >= map_3[v79], Error('SafeMath: addition overflow'));

                v80 = address(varg1);

                map_3[v80] = map_3[v79] + v69;

                v81 = address(varg1);

                require(map_3[v81] + v71 >= map_3[v81], Error('SafeMath: addition overflow'));

                v82 = address(varg1);

                _balanceOf[v82] = map_3[v81] + v71;

                0x3a07(v67);

                0x3bac(v68, v70);

                emit Transfer(address(v0), address(varg1), v69);

            }

        } else {

            v83, v84, v85, v86, v87, v88 = 0x38cd(varg0);

            v89 = address(v0);

            v90 = 0x3935(v88, _balanceOf[v89]);

            v91 = address(v0);

            _balanceOf[v91] = v90;

            v92 = address(varg1);

            require(map_3[v92] + v85 >= map_3[v92], Error('SafeMath: addition overflow'));

            v93 = address(varg1);

            map_3[v93] = map_3[v92] + v85;

            v94 = address(varg1);

            require(map_3[v94] + v87 >= map_3[v94], Error('SafeMath: addition overflow'));

            v95 = address(varg1);

            _balanceOf[v95] = map_3[v94] + v87;

            0x3a07(v83);

            0x3bac(v84, v86);

            emit Transfer(address(v0), address(varg1), v85);

        }

    } else {

        v96, v97, v98, v99, v100, v101 = 0x38cd(varg0);

        v102 = address(v0);

        v103 = 0x3935(varg0, map_3[v102]);

        v104 = address(v0);

        map_3[v104] = v103;

        v105 = address(v0);

        v106 = 0x3935(v101, map_3[v105]);

        v107 = address(v0);

        _balanceOf[v107] = v106;

        v108 = address(varg1);

        require(_balanceOf[v108] + v100 >= _balanceOf[v108], Error('SafeMath: addition overflow'));

        v109 = address(varg1);

        _balanceOf[v109] = _balanceOf[v108] + v100;

        0x3a07(v96);

        0x3bac(v97, v99);

        emit Transfer(address(v0), address(varg1), v98);

    }

    if (!v31) {

        stor_c = stor_e;

        stor_d = stor_f;

    }

}
