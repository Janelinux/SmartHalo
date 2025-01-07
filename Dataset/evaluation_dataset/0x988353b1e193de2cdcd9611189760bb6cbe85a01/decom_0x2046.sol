function 0x2046(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    if (varg0) {

        _swapAndLiquifyEnabled = bytes29(_swapAndLiquifyEnabled);

        if (!(address(v0) - address(0xaacbfda499e33106511c74ad45394029fa59f11d))) {

            _swapAndLiquifyEnabled = uint8(_buyFee >> 16) << 16 | ~0xff0000 & (uint8(_buyFee >> 8) << 8 | (bytes30(_swapAndLiquifyEnabled) | uint8(_buyFee)));

        }

        if (!(address(varg2) - address(0xaacbfda499e33106511c74ad45394029fa59f11d))) {

            _swapAndLiquifyEnabled = uint8(_sellFee >> 16) << 16 | ~0xff0000 & (uint8(_sellFee >> 8) << 8 | (bytes30(_swapAndLiquifyEnabled) | uint8(_sellFee)));

        }

    }

    v1 = v2 = uint8(_isExcludedFromReward[address(v0)]);

    if (v2) {

        v1 = v3 = !uint8(_isExcludedFromReward[address(varg2)]);

    }

    if (!v1) {

        v4 = v5 = !uint8(_isExcludedFromReward[address(v0)]);

        if (!bool(uint8(_isExcludedFromReward[address(v0)]))) {

            v4 = v6 = uint8(_isExcludedFromReward[address(varg2)]);

        }

        if (!v4) {

            v7 = v8 = !uint8(_isExcludedFromReward[address(v0)]);

            if (!bool(uint8(_isExcludedFromReward[address(v0)]))) {

                v7 = v9 = !uint8(_isExcludedFromReward[address(varg2)]);

            }

            if (!v7) {

                v10 = v11 = uint8(_isExcludedFromReward[address(v0)]);

                if (v11) {

                    v10 = v12 = uint8(_isExcludedFromReward[address(varg2)]);

                }

                if (!v10) {

                    0x2927(varg1);

                } else {

                    v13, v14, v15, v16 = 0x1d31(varg1);

                    v17, v18 = 0x22b4();

                    v19 = _SafeDiv(v17, v18);

                    v20, v21, v22, v23 = 0x1d90(v19, v13, v14, v15);

                    v24 = 0x1c75('SafeMath: subtraction overflow', v15, map_3[address(varg1)]);

                    map_3[address(varg1)] = v24;

                    v25 = 0x1c75('SafeMath: subtraction overflow', v22, map_2[address(varg1)]);

                    map_2[address(varg1)] = v25;

                    v26 = 0x1cd2(v14, map_3[address(v16)]);

                    map_3[address(v16)] = v26;

                    v27 = 0x1cd2(v21, map_2[address(v16)]);

                    map_2[address(v16)] = v27;

                    0x2a02(0);

                    0x2a02(0);

                    v28 = 0x1c75('SafeMath: subtraction overflow', v20, stor_a);

                    stor_a = v28;

                    v29 = 0x1cd2(v13, _totalFees);

                    _totalFees = v29;

                    emit Transfer(address(varg1), address(v16), v14);

                }

            } else {

                0x2927(varg1);

            }

        } else {

            v30, v31, v32, v33 = 0x1d31(varg1);

            v34, v35 = 0x22b4();

            v36 = _SafeDiv(v34, v35);

            v37, v38, v39, v40 = 0x1d90(v36, v30, v31, v32);

            v41 = 0x1c75('SafeMath: subtraction overflow', v39, map_2[address(varg1)]);

            map_2[address(varg1)] = v41;

            v42 = 0x1cd2(v31, map_3[address(v33)]);

            map_3[address(v33)] = v42;

            v43 = 0x1cd2(v38, map_2[address(v33)]);

            map_2[address(v33)] = v43;

            0x2a02(0);

            0x2a02(0);

            v44 = 0x1c75('SafeMath: subtraction overflow', v37, stor_a);

            stor_a = v44;

            v45 = 0x1cd2(v30, _totalFees);

            _totalFees = v45;

            emit Transfer(address(varg1), address(v33), v31);

        }

    } else {

        v46, v47, v48, v49 = 0x1d31(varg1);

        v50, v51 = 0x22b4();

        v52 = _SafeDiv(v50, v51);

        v53, v54, v55, v56 = 0x1d90(v52, v46, v47, v48);

        v57 = 0x1c75('SafeMath: subtraction overflow', v48, map_3[address(varg1)]);

        map_3[address(varg1)] = v57;

        v58 = 0x1c75('SafeMath: subtraction overflow', v55, map_2[address(varg1)]);

        map_2[address(varg1)] = v58;

        v59 = 0x1cd2(v54, map_2[address(v49)]);

        map_2[address(v49)] = v59;

        0x2a02(0);

        0x2a02(0);

        v60 = 0x1c75('SafeMath: subtraction overflow', v53, stor_a);

        stor_a = v60;

        v61 = 0x1cd2(v46, _totalFees);

        _totalFees = v61;

        emit Transfer(address(varg1), address(v49), v47);

        goto 0x229d;

    }

    _swapAndLiquifyEnabled = bytes29(_swapAndLiquifyEnabled);

    return v0;

}
