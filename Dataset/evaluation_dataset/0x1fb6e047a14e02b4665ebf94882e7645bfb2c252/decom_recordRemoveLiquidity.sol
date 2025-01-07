function recordRemoveLiquidity(address varg0, address varg1, address varg2, uint256 varg3, uint256 varg4, uint256 varg5) public payable { 

    v0 = v1 = 16882;

    require(msg.data.length - 4 >= 192);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 == varg2);

    require(1 == _claimBonusBatch, Error('LPReward: LOCKED'));

    _claimBonusBatch = 0;

    require(msg.sender == _swapRouter, Error('Caller is not the allowed router'));

    require(_swapFactory.code.size);

    v2, v0 = _swapFactory.getPair(varg1, varg2).gas(msg.gas);

    require(v2); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v0 == address(v0));

    if (0xff & _allowedPairs[address(v0)]) {

        v0 = v3 = _lpTokenAmounts[address(v0)];

        if (v3) {

            v4 = 0x2815(varg4, varg3);

            v5 = 0x2e24(v4);

            v6 = 0x2815(0xde0b6b3a7640000, v5);

            require(varg5, Panic(18));

            v7 = v8 = !_weightedRatio[address(v0)];

            if (_weightedRatio[address(v0)]) {

                v7 = v9 = _weightedRatio[address(v0)];

                if (_weightedRatio[address(v0)]) {

                    v7 = v10 = v6 / varg5 < _weightedRatio[address(v0)];

                }

            }

            if (!v7) {

                v11 = 0x286f(_weightedRatio[address(v0)], v6 / varg5);

                v12 = 0x2815(v0, v6 / varg5);

                require(v3, Panic(18));

                v13 = 0x286f(v0, v3);

                v14 = 0x2815(v13, _weightedRatio[address(v0)]);

                require(v3, Panic(18));

                v15 = 0x2e94(v12 / v3, v14 / v3);

                _weightedRatio[address(v0)] = v15;

                v16 = 0x286f(v0, v3);

                _lpTokenAmounts[address(v0)] = v16;

                v17 = 0x2815(v11, varg3);

                require(0xde0b6b3a7640000, Panic(18));

                v0 = v18 = v17 / 0xde0b6b3a7640000;

                v19 = 0x2815(v11, varg4);

                require(0xde0b6b3a7640000, Panic(18));

                v0 = v20 = v19 / 0xde0b6b3a7640000;

                v21 = v22 = 0;

                v23 = v24 = _nBU != varg1;

                if (_nBU != varg1) {

                    v23 = v25 = _nBU != varg2;

                }

                if (!v23) {

                    if (_nBU != varg1) {

                        v0 = v26 = 0x2815(2, v20);

                    } else {

                        v0 = v27 = 0x2815(2, v18);

                    }

                } else {

                    require(_swapFactory.code.size);

                    v28, v29 = _swapFactory.getPair(varg1, _nBU).gas(msg.gas);

                    require(v28); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v29 == address(v29));

                    if (address(v29)) {

                        v30 = 0x2fe0(varg1);

                        v31 = v32 = 0;

                        v33 = new array[](v30.length);

                        v34 = v35 = v33.data;

                        v36 = v37 = v30.data;

                        while (v31 < v30.length) {

                            MEM[v34] = address(MEM[v36]);

                            v36 += 32;

                            v34 += 32;

                            v31 += 1;

                        }

                        require(_swapRouter.code.size);

                        v38, v39 = _swapRouter.getAmountsOut(v18, v33).gas(msg.gas);

                        require(v38); // checks call status, propagates error data on error

                        RETURNDATACOPY(v39, 0, RETURNDATASIZE());

                        MEM[64] = v39 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);

                        v40 = v41 = 0;

                        require(v39 + RETURNDATASIZE() - v39 >= 32v41, v41);

                        require(MEM[v39] <= 0xffffffffffffffffv41, v41);

                        require(v39 + RETURNDATASIZE() > v39 + MEM[v39] + 31v41, v41);

                        v42 = 0x3b39(MEM[v39 + MEM[v39]]);

                        require(!((MEM[64] + v42 < MEM[64]) | (MEM[64] + v42 > 0xffffffffffffffff)), Panic(65));

                        v43 = v44 = MEM[64] + 32;

                        v45 = v46 = 32 + (v39 + MEM[v39]);

                        require(v39 + RETURNDATASIZE() >= 32 + (v39 + MEM[v39] + (MEM[v39 + MEM[v39]] << 5))v41, v41);

                        while (v40 < MEM[v39 + MEM[v39]]) {

                            MEM[v43] = MEM[v45];

                            v40 += 1;

                            v43 += 32;

                            v45 += 32;

                        }

                        require(1 < MEM[v39 + MEM[v39]], Panic(50));

                        v21 = v47 = MEM[64 + MEM[64]];

                    }

                    require(_swapFactory.code.size);

                    v48, v0 = _swapFactory.getPair(varg2, _nBU).gas(msg.gas);

                    require(v48); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v0 == address(v0));

                    if (!address(v0)) {

                        v0 = v49 = 0x2815(2, v21);

                    } else if (!v21) {

                        v50 = 0x2fe0(varg2);

                        v51 = v52 = 0;

                        v53 = new array[](v50.length);

                        v54 = v55 = v53.data;

                        v56 = v57 = v50.data;

                        while (v51 < v50.length) {

                            MEM[v54] = address(MEM[v56]);

                            v56 += 32;

                            v54 += 32;

                            v51 += 1;

                        }

                        require(_swapRouter.code.size);

                        v58, v59 = _swapRouter.getAmountsOut(v20, v53).gas(msg.gas);

                        require(v58); // checks call status, propagates error data on error

                        RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());

                        MEM[64] = MEM[64] + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);

                        v60 = v61 = 0;

                        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32v61, v61);

                        require(MEM[MEM[64]] <= 0xffffffffffffffffv61, v61);

                        require(MEM[64] + RETURNDATASIZE() > MEM[64] + MEM[MEM[64]] + 31v61, v61);

                        v62 = 0x3b39(MEM[MEM[64] + MEM[MEM[64]]]);

                        require(!((MEM[64] + v62 < MEM[64]) | (MEM[64] + v62 > 0xffffffffffffffff)), Panic(65));

                        v63 = v64 = MEM[64] + 32;

                        v65 = v66 = 32 + (MEM[64] + MEM[MEM[64]]);

                        require(MEM[64] + RETURNDATASIZE() >= 32 + (MEM[64] + MEM[MEM[64]] + (MEM[MEM[64] + MEM[MEM[64]]] << 5))v61, v61);

                        while (v60 < MEM[MEM[64] + MEM[MEM[64]]]) {

                            MEM[v63] = MEM[v65];

                            v60 += 1;

                            v63 += 32;

                            v65 += 32;

                        }

                        require(1 < MEM[MEM[64] + MEM[MEM[64]]], Panic(50));

                        v0 = v67 = 0;

                        v68 = !2;

                        if (2) {

                            require(!(MEM[64 + MEM[64]] & (2 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / MEM[64 + MEM[64]])), Panic(17));

                            v0 = v69 = MEM[64 + MEM[64]] << 1;

                            require(2, Panic(18));

                            v68 = v70 = v69 >> 1 == MEM[64 + MEM[64]];

                        }

                        require(v68, Error('LPReward: ds-math-mul-overflow'));

                    } else {

                        v71 = v72 = 8196;

                        v73 = 0x2fe0(varg2);

                        v74 = v75 = 0;

                        v76 = new array[](v73.length);

                        v77 = v78 = v76.data;

                        v79 = v80 = v73.data;

                        while (v74 < v73.length) {

                            MEM[v77] = address(MEM[v79]);

                            v79 += 32;

                            v77 += 32;

                            v74 += 1;

                        }

                        require(_swapRouter.code.size);

                        v81, v82 = _swapRouter.getAmountsOut(v20, v76).gas(msg.gas);

                        require(v81); // checks call status, propagates error data on error

                        RETURNDATACOPY(v82, 0, RETURNDATASIZE());

                        MEM[64] = v82 + (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & RETURNDATASIZE() + 31);

                        v83 = v84 = 0;

                        require(v82 + RETURNDATASIZE() - v82 >= 32v84, v84);

                        require(MEM[v82] <= 0xffffffffffffffffv84, v84);

                        require(v82 + RETURNDATASIZE() > v82 + MEM[v82] + 31v84, v84);

                        v85 = 0x3b39(MEM[v82 + MEM[v82]]);

                        require(!((MEM[64] + v85 < MEM[64]) | (MEM[64] + v85 > 0xffffffffffffffff)), Panic(65));

                        v86 = v87 = MEM[64] + 32;

                        v88 = v89 = 32 + (v82 + MEM[v82]);

                        require(v82 + RETURNDATASIZE() >= 32 + (v82 + MEM[v82] + (MEM[v82 + MEM[v82]] << 5))v84, v84);

                        while (v83 < MEM[v82 + MEM[v82]]) {

                            MEM[v86] = MEM[v88];

                            v83 += 1;

                            v86 += 32;

                            v88 += 32;

                        }

                        require(1 < MEM[v82 + MEM[v82]], Panic(50));

                        v0 = v90 = MEM[64 + MEM[64]];

                    }

                }

                v91 = v0;

                if (v0) {

                    v92 = 0x73b();

                    v91 = v93 = v0 <= v92;

                }

                if (v91) {

                    require(_nBU.code.size);

                    v94, v95 = _nBU.balanceOf(address(this)).gas(msg.gas);

                    require(v94); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    v91 = v96 = v95 >= v0;

                }

                if (!v91) {

                    v97, v98 = 0x2f95(v0, v0);

                    if (address(v0) != address(v98)) {

                    }

                    if (0 != _unclaimedAmounts[address(v0)]) {

                        v99 = v100 = 0;

                        v71 = v101 = 9479;

                        require(_unclaimedAmounts[address(v0)], Panic(50));

                    } else {

                        v102 = address(v0);

                        _unclaimedAmounts[v102] = _unclaimedAmounts[v102] + 1;

                        STORAGE[keccak256(keccak256(address(v0), keccak256(v102, 10))) + _unclaimedAmounts[v102]] = v0;

                        _unclaimedAmounts[v102] = _unclaimedAmounts[v102] + 1;

                        STORAGE[keccak256(keccak256(address(v0), keccak256(v102, 10))) + _unclaimedAmounts[v102]] = v0;

                    }

                } else {

                    require(_nBU.code.size);

                    v103, v104 = _nBU.transfer(address(v0), v0).gas(msg.gas);

                    require(v103); // checks call status, propagates error data on error

                    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                    require(v104 == v104);

                    v105 = 0x2e94(v0, _lpRewardUsed);

                    _lpRewardUsed = v105;

                    emit RecordRemoveLiquidityGiveNbu(address(v0), address(v0), v0, v0, v0, v0);

                }

                emit RecordRemoveLiquidityUnclaimed(address(v0), address(v0), v0, v0, v0);

                _ratioUpdateLast[address(v0)] = block.timestamp;

                v21 = STORAGE[keccak256(v106) + v99];

                v0 = _SafeAdd(v21, v0);

                require(v0 >= v21, Error('LPReward: ds-math-add-overflow'));

                goto {'0x25070x3af', '0x20040x3af', '0x25ef0x3af'};

                v107 = address(v0);

                require(_unclaimedAmounts[v107], Panic(50));

                STORAGE[0 + keccak256(keccak256(address(v0), keccak256(v107, 10)))] = v0;

                v71 = v108 = 9711;

                v99 = v109 = 1;

                require(v109 < _unclaimedAmounts[v107], Panic(50));

                require(1 < _unclaimedAmounts[address(v0)], Panic(50));

                STORAGE[keccak256(v110) + 1] = v0;

                goto 0x21770x3af;

            }

        }

    }

    _claimBonusBatch = 1;

}
