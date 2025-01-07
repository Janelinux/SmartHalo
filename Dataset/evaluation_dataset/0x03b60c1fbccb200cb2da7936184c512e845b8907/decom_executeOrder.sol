function executeOrder(uint256 varg0) public nonPayable { 

    v0 = v1 = 13823;

    require(msg.data.length - 4 >= 32);

    require(varg0 < _orderCount, Error('DXswapRelayer: INVALID_ORDER'));

    require(!(0xff & _getOrderDetails[varg0][12] >> 160), Error('DXswapRelayer: ORDER_EXECUTED'));

    require(stor_0_0_19.code.size);

    v2, v3 = stor_0_0_19.isOracleFinalized(_getOrderDetails[varg0][11]).gas(msg.gas);

    require(v2); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v3 == v3);

    require(v3, Error('DXswapRelayer: OBSERVATION_RUNNING'));

    require(block.timestamp <= _getOrderDetails[varg0][9], Error('DXswapRelayer: DEADLINE_REACHED'));

    v0 = v4 = address(_getOrderDetails[varg0] >> 8);

    v0 = v5 = address(_getOrderDetails[varg0][0x1]);

    if (!v4) {

        require(0xb9960d9bca016e9748be75dd52f02188b9d0829f.code.size);

        v6, v0 = 0xb9960d9bca016e9748be75dd52f02188b9d0829f.WETH().gas(msg.gas);

        require(v6); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v0 == address(v0));

        goto 0xdfb;

    }

    require(stor_0_0_19.code.size);

    v7, v0 = stor_0_0_19.consult(_getOrderDetails[varg0][11], address(v0), _getOrderDetails[varg0][2]).gas(msg.gas);

    require(v7); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(stor_0_0_19.code.size);

    v8, v0 = stor_0_0_19.consult(_getOrderDetails[varg0][11], address(v5), _getOrderDetails[varg0][3]).gas(msg.gas);

    require(v8); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    if (v0 > _getOrderDetails[varg0][2]) {

        v0 = v9 = _getOrderDetails[varg0][2];

    } else {

        v0 = v10 = _getOrderDetails[varg0][3];

    }

    v11 = v12 = 3954;

    v13 = 0x21a4(_getOrderDetails[varg0][5], v0);

    assert(0xf4240);

    v14 = v15 = v13 / 0xf4240;

    while (1) {

        v0 = v0 - v14;

        if (v0 <= v0) {

            break;

        }

        goto {'0xfc7', '0xf72'};

        v11 = v16 = 4039;

        v17 = 0x21a4(STORAGE[5 + v0], v0);

        assert(0xf4240);

        v14 = v17 / 0xf4240;

    }

    revert(Error('ds-math-sub-underflow'));

    STORAGE[v0 + 12] = 0x10000000000000000000000000000000000000000 | ~0xff0000000000000000000000000000000000000000 & STORAGE[v0 + 12];

    if (1 != 0xff & STORAGE[v0]) {

        if (STORAGE[v0] & 0xff == 2) {

            v18 = 0x1ef9(0xd34971bab6e5e356fd250715f5de0492bb070452, v0, v0);

            v19 = STORAGE[4 + v0];

            if (!address(v20)) {

                v0 = v21 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;

            }

            MEM[36 + MEM[64] + 32] = v19;

            MEM[MEM[64] + 32] = 0x95ea7b30000000000000000b9960d9bca016e9748be75dd52f02188b9d0829f;

            v22 = v23 = 0;

            while (v22 < 68) {

                MEM[v22 + MEM[64]] = MEM[32 + (MEM[64] + v22)];

                v22 += 32;

            }

            if (v22 > 68) {

                MEM[MEM[64] + 68] = v23;

            }

            v24 = v25, v26, v27 = address(v18).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v28 = v29 = 96;

            } else {

                v28 = v30 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v30.data, 0, RETURNDATASIZE());

            }

            if (v25) {

                v24 = v31 = !MEM[v28];

                if (MEM[v28]) {

                    require(v27 + MEM[v28] - v27 >= 32);

                    v24 = MEM[v27];

                    require(v24 == v24);

                }

            }

            require(v24, Error('TransferHelper: APPROVE_FAILED'));

            require(0xb9960d9bca016e9748be75dd52f02188b9d0829f.code.size);

            v32, v33, v34 = 0xb9960d9bca016e9748be75dd52f02188b9d0829f.removeLiquidity(address(v0), address(v0), v19, v0, v0, address(this), block.timestamp).gas(msg.gas);

            require(v32); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

            MEM[36 + MEM[64] + 32] = 0;

            MEM[MEM[64] + 32] = 0x95ea7b30000000000000000b9960d9bca016e9748be75dd52f02188b9d0829f;

            v35 = v36 = 0;

            while (v35 < 68) {

                MEM[v35 + MEM[64]] = MEM[32 + (MEM[64] + v35)];

                v35 += 32;

            }

            if (v35 > 68) {

                MEM[MEM[64] + 68] = v36;

            }

            v37 = v38, v39, v40 = address(v18).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v41 = v42 = 96;

            } else {

                v41 = v43 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v43.data, 0, RETURNDATASIZE());

            }

            if (v38) {

                v37 = v44 = !MEM[v41];

                if (MEM[v41]) {

                    require(v40 + MEM[v41] - v40 >= 32);

                    v37 = MEM[v40];

                    require(v37 == v37);

                }

            }

            require(v37, Error('TransferHelper: APPROVE_FAILED'));

            if (address(v0) != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {

                if (address(v0) == 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {

                    require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);

                    v45 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v34).gas(msg.gas);

                    require(v45); // checks call status, propagates error data on error

                    goto 0x1094;

                }

            } else {

                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);

                v46 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v33).gas(msg.gas);

                require(v46); // checks call status, propagates error data on error

                goto 0x1094;

            }

        }

    } else {

        if (!address(v47)) {

            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);

            v48 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(v0).gas(msg.gas);

            require(v48); // checks call status, propagates error data on error

            v0 = v49 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;

        }

        MEM[36 + MEM[64] + 32] = v0;

        MEM[MEM[64] + 32] = 0x95ea7b30000000000000000b9960d9bca016e9748be75dd52f02188b9d0829f;

        v50 = v51 = 0;

        while (v50 < 68) {

            MEM[v50 + MEM[64]] = MEM[32 + (MEM[64] + v50)];

            v50 += 32;

        }

        if (v50 > 68) {

            MEM[MEM[64] + 68] = v51;

        }

        v52 = v53, v54, v55 = address(v0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v56 = v57 = 96;

        } else {

            v56 = v58 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v58.data, 0, RETURNDATASIZE());

        }

        if (v53) {

            v52 = v59 = !MEM[v56];

            if (MEM[v56]) {

                require(v55 + MEM[v56] - v55 >= 32);

                v52 = MEM[v55];

                require(v52 == v52);

            }

        }

        require(v52, Error('TransferHelper: APPROVE_FAILED'));

        MEM[36 + MEM[64] + 32] = v0;

        MEM[MEM[64] + 32] = 0x95ea7b30000000000000000b9960d9bca016e9748be75dd52f02188b9d0829f;

        v60 = v61 = 0;

        while (v60 < 68) {

            MEM[v60 + MEM[64]] = MEM[32 + (MEM[64] + v60)];

            v60 += 32;

        }

        if (v60 > 68) {

            MEM[MEM[64] + 68] = v61;

        }

        v62 = v63, v64, v65 = address(v0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v66 = v67 = 96;

        } else {

            v66 = v68 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v68.data, 0, RETURNDATASIZE());

        }

        if (v63) {

            v62 = v69 = !MEM[v66];

            if (MEM[v66]) {

                require(v65 + MEM[v66] - v65 >= 32);

                v62 = MEM[v65];

                require(v62 == v62);

            }

        }

        require(v62, Error('TransferHelper: APPROVE_FAILED'));

        require(0xb9960d9bca016e9748be75dd52f02188b9d0829f.code.size);

        v70, v71, v72, v73 = 0xb9960d9bca016e9748be75dd52f02188b9d0829f.addLiquidity(address(v0), address(v0), v0, v0, v0, v0, address(this), block.timestamp).gas(msg.gas);

        require(v70); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

        MEM[36 + MEM[64] + 32] = 0;

        MEM[MEM[64] + 32] = 0x95ea7b30000000000000000b9960d9bca016e9748be75dd52f02188b9d0829f;

        v74 = v75 = 0;

        while (v74 < 68) {

            MEM[v74 + MEM[64]] = MEM[32 + (MEM[64] + v74)];

            v74 += 32;

        }

        if (v74 > 68) {

            MEM[MEM[64] + 68] = v75;

        }

        v76 = v77, v78, v79 = address(v0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v80 = v81 = 96;

        } else {

            v80 = v82 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v82.data, 0, RETURNDATASIZE());

        }

        if (v77) {

            v76 = v83 = !MEM[v80];

            if (MEM[v80]) {

                require(v79 + MEM[v80] - v79 >= 32);

                v76 = MEM[v79];

                require(v76 == v76);

            }

        }

        require(v76, Error('TransferHelper: APPROVE_FAILED'));

        MEM[36 + MEM[64] + 32] = 0;

        MEM[MEM[64] + 32] = 0x95ea7b30000000000000000b9960d9bca016e9748be75dd52f02188b9d0829f;

        v84 = v85 = 0;

        while (v84 < 68) {

            MEM[v84 + MEM[64]] = MEM[32 + (MEM[64] + v84)];

            v84 += 32;

        }

        if (v84 > 68) {

            MEM[MEM[64] + 68] = v85;

        }

        v86 = v87, v88, v89 = address(v0).call(MEM[(MEM[64]) len 68], MEM[(MEM[64]) len 0]).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v90 = v91 = 96;

        } else {

            v90 = v92 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v92.data, 0, RETURNDATASIZE());

        }

        if (v87) {

            v86 = v93 = !MEM[v90];

            if (MEM[v90]) {

                require(v89 + MEM[v90] - v89 >= 32);

                v86 = MEM[v89];

                require(v86 == v86);

            }

        }

        require(v86, Error('TransferHelper: APPROVE_FAILED'));

    }

    emit ExecutedOrder(v0);

}
