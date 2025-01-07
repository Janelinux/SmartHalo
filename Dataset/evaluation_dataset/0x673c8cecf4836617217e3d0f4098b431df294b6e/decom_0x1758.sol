function 0x1758(uint256 varg0, uint256 varg1) private { 

    require(address(v0), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v1 = _owner == address(v0);

    v2 = v3 = _owner != address(v0);

    if (_owner != address(v0)) {

        v2 = v4 = _owner != address(varg1);

    }

    if (v2) {

        require(varg0 <= stor_15, Error('Transfer amount exceeds the maxTxAmount.'));

    }

    v5 = v6 = 0xe43(this);

    if (v6 >= stor_15) {

        v5 = v7 = stor_15;

    }

    v8 = v9 = v5 >= stor_16;

    v8 = v10 = !stor_14_0_0;

    if (!stor_14_0_0) {

        v8 = v11 = _swapEnabled;

    }

    if (v8) {

        v8 = v12 = address(varg1) == 0xe7cd8b0d1dcf0c9e77b4b62f3459caf566536024;

        if (address(varg1) != 0xe7cd8b0d1dcf0c9e77b4b62f3459caf566536024) {

            v13 = address(varg1);

            v8 = v14 = 0xff & _isUniswapPair[v13];

        }

    }

    if (v8) {

        0x1bc9(v5);

        if (this.balance) {

            0x1e1b(this.balance);

        }

    }

    v15 = v16 = 0;

    v17 = v18 = address(v0) == 0xe7cd8b0d1dcf0c9e77b4b62f3459caf566536024;

    if (address(v0) != 0xe7cd8b0d1dcf0c9e77b4b62f3459caf566536024) {

        v17 = v19 = address(varg1) == 0xe7cd8b0d1dcf0c9e77b4b62f3459caf566536024;

    }

    if (!v17) {

        v20 = address(varg1);

        v17 = v21 = 0xff & _isUniswapPair[v20];

    }

    if (!v17) {

        v22 = address(v0);

        v17 = v23 = 0xff & _isUniswapPair[v22];

    }

    if (v17) {

        v24 = address(v0);

        v25 = v26 = 0xff & _isExcludedFromFee[v24];

        if (!v26) {

            v27 = address(varg1);

            v25 = v28 = 0xff & _isExcludedFromFee[v27];

        }

        v17 = v29 = !v25;

    }

    if (v17) {

        v15 = v30 = 1;

    }

    if (!v15) {

        v31 = v32 = !stor_d;

        if (v32) {

            v31 = !stor_e;

        }

        if (!v31) {

            stor_f = stor_d;

            stor_10 = stor_e;

            stor_d = 0;

            stor_e = 0;

        } else {

            goto 0x1ee2B0x1ae3;

        }

    }

    v33 = address(v0);

    v34 = v35 = 0xff & _isExcluded[v33];

    if (v35) {

        v36 = address(varg1);

        v34 = !(0xff & _isExcluded[v36]);

    }

    if (!v34) {

        v37 = address(v0);

        v38 = v39 = !(0xff & _isExcluded[v37]);

        if (v39) {

            v40 = address(varg1);

            v38 = 0xff & _isExcluded[v40];

        }

        if (!v38) {

            v41 = address(v0);

            v42 = v43 = 0xff & _isExcluded[v41];

            if (v43) {

                v44 = address(varg1);

                v42 = 0xff & _isExcluded[v44];

            }

            if (!v42) {

                v45 = 0x257e(varg1);

                v46, v47, v48, v49, v50, v51 = 0x1b5e(v45);

                v52 = address(varg1);

                v53 = 0x1bbd(0, map_2[v52]);

                v54 = address(varg1);

                map_2[v54] = v53;

                v55 = v56 = 0x1bbd(v51, map_2[v54]);

                v57 = address(varg1);

                _excludeAccount[v57] = v55;

                v58 = address(varg0);

                v59 = v60 = _SafeAdd(v50, _excludeAccount[v57]);

                v61 = address(varg0);

                _excludeAccount[v61] = v59;

                0x25da();

                v62 = 0x1bbd(v47, stor_8);

                stor_8 = v62;

                v63 = _SafeAdd(9124, _totalFees);

                _totalFees = v63;

                emit Transfer(0, address(v51), v46);

                goto 0x1fe4B0x1ae3;

                v64 = address(varg1);

                v65 = v66 = 0x1bbd(v51, _excludeAccount[v64]);

                v67 = address(varg1);

                _excludeAccount[v67] = v65;

                v68 = address(varg0);

                v69 = _SafeAdd(v48, map_2[v67]);

                v70 = address(varg0);

                map_2[v70] = v69;

                v59 = v71 = _SafeAdd(v50, map_2[v70]);

                v72 = address(varg1);

                v73 = 0x1bbd(0, map_2[v72]);

                v74 = address(varg1);

                map_2[v74] = v73;

                v65 = 0x1bbd(v51, map_2[v74]);

                v75 = address(varg1);

                v55 = 0x1bbd(v51, _excludeAccount[v75]);

            } else {

                v76 = 0x257e(varg1);

                v77, v78, v79, v80, v81, v82 = 0x1b5e(v76);

                v83 = address(varg1);

                v84 = 0x1bbd(0, map_2[v83]);

                v85 = address(varg1);

                map_2[v85] = v84;

                v86 = v87 = 0x1bbd(v82, map_2[v85]);

                v88 = address(varg1);

                _excludeAccount[v88] = v86;

                v89 = address(varg0);

                v90 = v91 = _SafeAdd(v81, _excludeAccount[v88]);

                v92 = address(varg0);

                _excludeAccount[v92] = v90;

                0x25da();

                v93 = 0x1bbd(v78, stor_8);

                stor_8 = v93;

                v94 = _SafeAdd(9124, _totalFees);

                _totalFees = v94;

                emit Transfer(0, address(v82), v77);

                goto 0x1f33B0x1ae3;

                v95 = address(varg1);

                v96 = v97 = 0x1bbd(v82, _excludeAccount[v95]);

                v98 = address(varg1);

                _excludeAccount[v98] = v96;

                v99 = address(varg0);

                v100 = _SafeAdd(v79, map_2[v98]);

                v101 = address(varg0);

                map_2[v101] = v100;

                v90 = v102 = _SafeAdd(v81, map_2[v101]);

                v103 = address(varg1);

                v104 = 0x1bbd(0, map_2[v103]);

                v105 = address(varg1);

                map_2[v105] = v104;

                v96 = 0x1bbd(v82, map_2[v105]);

                v106 = address(varg1);

                v86 = 0x1bbd(v82, _excludeAccount[v106]);

            }

        } else {

            v107 = 0x257e(varg1);

            v108, v109, v110, v111, v112, v113 = 0x1b5e(v107);

            v114 = address(varg1);

            v115 = 0x1bbd(0, map_2[v114]);

            v116 = address(varg1);

            map_2[v116] = v115;

            v117 = v118 = 0x1bbd(v113, map_2[v116]);

            v119 = address(varg1);

            _excludeAccount[v119] = v117;

            v120 = address(varg0);

            v121 = v122 = _SafeAdd(v112, _excludeAccount[v119]);

            v123 = address(varg0);

            _excludeAccount[v123] = v121;

            0x25da();

            v124 = 0x1bbd(v109, stor_8);

            stor_8 = v124;

            v125 = _SafeAdd(9124, _totalFees);

            _totalFees = v125;

            emit Transfer(0, address(v113), v108);

            goto 0x1f33B0x1ae3;

            v126 = address(varg1);

            v127 = v128 = 0x1bbd(v113, _excludeAccount[v126]);

            v129 = address(varg1);

            _excludeAccount[v129] = v127;

            v130 = address(varg0);

            v131 = _SafeAdd(v110, map_2[v129]);

            v132 = address(varg0);

            map_2[v132] = v131;

            v121 = v133 = _SafeAdd(v112, map_2[v132]);

            v134 = address(varg1);

            v135 = 0x1bbd(0, map_2[v134]);

            v136 = address(varg1);

            map_2[v136] = v135;

            v127 = 0x1bbd(v113, map_2[v136]);

            v137 = address(varg1);

            v117 = 0x1bbd(v113, _excludeAccount[v137]);

        }

    } else {

        v138 = 0x257e(varg1);

        v139, v140, v141, v142, v143, v144 = 0x1b5e(v138);

        v145 = address(varg1);

        v146 = 0x1bbd(0, map_2[v145]);

        v147 = address(varg1);

        map_2[v147] = v146;

        v148 = v149 = 0x1bbd(v144, map_2[v147]);

        v150 = address(varg1);

        _excludeAccount[v150] = v148;

        v151 = address(varg0);

        v152 = v153 = _SafeAdd(v143, _excludeAccount[v150]);

        v154 = address(varg0);

        _excludeAccount[v154] = v152;

        0x25da();

        v155 = 0x1bbd(v140, stor_8);

        stor_8 = v155;

        v156 = _SafeAdd(9124, _totalFees);

        _totalFees = v156;

        emit Transfer(0, address(v144), v139);

        v157 = address(varg1);

        v158 = v159 = 0x1bbd(v144, _excludeAccount[v157]);

        v160 = address(varg1);

        _excludeAccount[v160] = v158;

        v161 = address(varg0);

        v162 = _SafeAdd(v141, map_2[v160]);

        v163 = address(varg0);

        map_2[v163] = v162;

        v152 = v164 = _SafeAdd(v143, map_2[v163]);

        v165 = address(varg1);

        v166 = 0x1bbd(0, map_2[v165]);

        v167 = address(varg1);

        map_2[v167] = v166;

        v158 = 0x1bbd(v144, map_2[v167]);

        v168 = address(varg1);

        v148 = 0x1bbd(v144, _excludeAccount[v168]);

    }

    if (!v0) {

        stor_d = stor_f;

        stor_e = stor_10;

        goto 0x1ecf0x1ed5B0x1ae3;

    }

    return ;

}
