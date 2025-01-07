function 0x2b55(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('No transfers from Zero wallet'));

    if (_approve <= block.number) {

        v0 = address(varg2);

        if (_sniperCaughtInBlock[v0] != 0) {

            v1 = address(varg2);

            0x2715(_sniperCaughtInBlock[v1], varg1);

        }

        v2 = _SafeAdd(_approve, stor_12_0_0);

        v3 = v4 = block.number < v2;

        if (v4) {

            v3 = v5 = msg.gas > BASEFEE();

        }

        if (v3) {

            v6 = _SafeSub(msg.gas, BASEFEE());

            require(v6 < stor_13, Error('Gas price over limit'));

        }

    } else {

        require(stor_3_0_3, Panic(18));

        if (address(address(varg1) % stor_3_0_3) != stor_3_4_7) {

            v7 = address(varg2);

            if (_sniperCaughtInBlock[v7] != 0) {

                v8 = address(varg2);

                0x2715(_sniperCaughtInBlock[v8], varg1);

            } else {

                0x2715(block.number, varg1);

            }

        } else {

            0x2a9f(1);

        }

    }

    v9 = v10 = _tradingOpen;

    if (v10) {

        v11 = address(varg2);

        v9 = v12 = _sniperCaughtInBlock[v11] != 0;

    }

    if (v9) {

        v13 = address(varg2);

        v9 = v14 = _sniperCaughtInBlock[v13] < block.number;

    }

    require(!v9, Error('blacklisted'));

    v15 = v16 = !stor_17_20_20;

    if (!stor_17_20_20) {

        v17 = address(varg1);

        v15 = v18 = 0xff & owner_d[v17];

    }

    if (v15) {

        stor_17_20_20 = 1;

        v19 = _balanceOf[address(this)];

        v20 = v21 = v19 >= stor_b;

        if (v21) {

            v20 = _tradingOpen;

        }

        if (v20) {

            if (v19 >= stor_c) {

                v19 = v22 = stor_c;

            }

            v23 = _SafeMul(v19, uint16(_snipersCaught >> 80));

            v24 = _SafeDiv(v23, uint16(_snipersCaught >> 144));

            v25 = _SafeDiv(v24, 2);

            v26 = _SafeMul(v19, uint16(_snipersCaught >> 48));

            v27 = _SafeDiv(v26, uint16(_snipersCaught >> 144));

            0x3e7d(v27, stor_17_0_19);

            v28 = _SafeMul(v19, uint16(_snipersCaught >> 64));

            v29 = _SafeDiv(v28, uint16(_snipersCaught >> 144));

            0x3e7d(v29, 0);

            v30 = _SafeSub(v19, v25);

            v31 = _SafeSub(v30, v27);

            v32 = _SafeSub(v31, v29);

            0x36b5(v32);

            v33 = _SafeSub(this.balance, this.balance);

            if (uint16(_snipersCaught >> 80) > 0) {

                v34 = _SafeMul(v33, uint16(_snipersCaught >> 80));

                v35 = _SafeDiv(v34, uint16(_snipersCaught >> 144));

                0x32a7(v25);

                0x3491(0, v35, v25);

            }

            if (this.balance > 0) {

                0x2837(this.balance);

            }

        }

        stor_17_20_20 = 0;

    }

    v36 = v37 = address(varg2) != address(this);

    if (v37) {

        v36 = v38 = address(varg1) != address(this);

    }

    if (v36) {

        v36 = v39 = address(varg2) != _getOwner;

    }

    if (v36) {

        v40 = v41 = 1;

        v42 = v43 = _tradingOpen;

        if (v43) {

            v44 = address(varg1);

            v42 = !(0xff & map_7[v44]);

        }

        if (v42) {

            if (varg0 <= _maxTxAmount) {

                v45 = address(varg1);

                v46 = v47 = !(0xff & owner_d[v45]);

                if (v47) {

                    v48 = address(varg1);

                    v49 = _SafeAdd(_balanceOf[v48], varg0);

                    v46 = v49 > _maxWalletAmount;

                }

                if (v46) {

                    v40 = v50 = 0;

                }

            } else {

                v40 = v51 = 0;

            }

        }

        require(v40, Error('TX exceeds limits'));

    }

    v52 = v53 = !_tradingOpen;

    if (_tradingOpen) {

        v54 = address(varg2);

        v52 = v55 = 0xff & owner_6[v54];

    }

    if (!v52) {

        v56 = address(varg1);

        v52 = 0xff & owner_6[v56];

    }

    if (!v52) {

        v57 = address(varg2);

        if (!(0xff & owner_d[v57])) {

            v58 = address(varg1);

            if (!(0xff & owner_d[v58])) {

                v59 = _SafeMul(varg0, 0xff & (0xff & _snipersCaught >> 40));

                v60 = _SafeDiv(v59, 100);

            } else {

                v61 = _SafeMul(varg0, 0xff & (0xff & _snipersCaught >> 32));

                v60 = v62 = _SafeDiv(v61, 100);

            }

        } else {

            v63 = _SafeMul(varg0, 0xff & (0xff & _snipersCaught >> 24));

            v60 = v64 = _SafeDiv(v63, 100);

        }

    } else {

        v60 = v65 = 0;

    }

    v66 = _SafeSub(varg0, v60);

    v67 = address(varg2);

    v68 = _SafeSub(_balanceOf[v67], varg0);

    v69 = address(varg2);

    _balanceOf[v69] = v68;

    if (v60 > 0) {

        v70 = _SafeAdd(_balanceOf[address(this)], v60);

        _balanceOf[address(this)] = v70;

    }

    v71 = address(varg1);

    v72 = _SafeAdd(_balanceOf[v71], v66);

    v73 = address(varg1);

    _balanceOf[v73] = v72;

    emit Transfer(address(varg2), address(varg1), varg0);

    return 1;

}
