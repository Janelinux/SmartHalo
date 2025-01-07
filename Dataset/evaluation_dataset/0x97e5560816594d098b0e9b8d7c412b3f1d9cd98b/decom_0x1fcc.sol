function 0x1fcc(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    if (!stor_15_0_0) {

        v0 = v1 = !uint8(_isAuthorized[address(varg2)]);

        if (!bool(uint8(_isAuthorized[address(varg2)]))) {

            v0 = v2 = !uint8(_isAuthorized[address(varg1)]);

        }

        if (v0) {

            require(_tradingOpen, Error('Trading not open yet'));

        }

        v3 = v4 = !uint8(_isAuthorized[address(varg2)]);

        if (!bool(uint8(_isAuthorized[address(varg2)]))) {

            v3 = v5 = !uint8(_isWalletLimitExempt[address(varg2)]);

        }

        if (v3) {

            v3 = v6 = !uint8(_isWalletLimitExempt[address(varg1)]);

        }

        if (v3) {

            v3 = v7 = address(varg1) != address(0x2026f5449ed061eaff6909584e5faa5c3515e533);

        }

        if (v3) {

            v8 = _SafeAdd(_balanceOf[address(varg1)], varg0);

            require(v8 <= __maxWalletToken, Error('max wallet limit reached'));

        }

        v9 = v10 = varg0 <= __maxTxAmount;

        if (varg0 > __maxTxAmount) {

            v9 = v11 = uint8(_isTxLimitExempt[address(varg2)]);

        }

        if (!v9) {

            v9 = v12 = uint8(_isTxLimitExempt[address(varg1)]);

        }

        require(v9, Error('Max TX Limit Exceeded'));

        v13 = 0x25e8();

        if (v13) {

            stor_15_0_0 = 1;

            v14 = _SafeMul(2, _totalFee);

            v15 = _SafeMul(_swapThreshold, _liquidityFee);

            require(v14, Panic(18)); // division by zero

            v16 = _SafeSub(_swapThreshold, v15 / v14);

            v17 = new uint256[](2);

            require(0 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v18 = v17.data;

            v17[0] = address(this);

            require(1 < v17.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v17[1] = address(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);

            v19 = new uint256[](v17.length);

            v20 = v21 = v19.data;

            v22 = v23 = v17.data;

            v24 = v25 = 0;

            while (v24 < v17.length) {

                MEM[v20] = address(MEM[v22]);

                v22 += 32;

                v20 += 32;

                v24 += 1;

            }

            require(bool(_router.code.size));

            v26 = _router.swapExactTokensForETHSupportingFeeOnTransferTokens(v16, 0, v19, address(this), block.timestamp, v27, address(this)).gas(msg.gas);

            require(bool(v26), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(2, Panic(18)); // division by zero

            v28 = _SafeSub(_totalFee, _liquidityFee >> 1);

            v29 = _SafeMul(2, v28);

            v30 = _SafeMul(this.balance, _liquidityFee);

            require(v29, Panic(18)); // division by zero

            v31 = _SafeMul(this.balance, _marketingFee);

            require(v28, Panic(18)); // division by zero

            v32 = _SafeMul(this.balance, _developmentFee);

            require(v28, Panic(18)); // division by zero

            v33 = _marketingFeeReceiver.call().value(v31 / v28).gas(2300 * !(v31 / v28));

            require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            v34 = _developmentFeeReceiver.call().value(v32 / v28).gas(2300 * !(v32 / v28));

            require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            if (v15 / v14) {

                v35, v36, v37, v38 = _router.addLiquidityETH(this, v15 / v14, 0, 0, this, block.timestamp).value(v30 / v29).gas(msg.gas);

                require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                emit AutoLiquify(v30 / v29, v15 / v14);

            }

            v39 = bytes31(STORAGE[21]);

            stor_15_0_0 = 0;

        }

        v40 = 0x1f92('Insufficient Balance', varg0, _balanceOf[address(varg2)]);

        _balanceOf[address(varg2)] = v40;

        v41 = v42 = uint8(_isFeeExempt[address(varg2)]);

        if (!v42) {

            v41 = v43 = uint8(_isFeeExempt[address(varg1)]);

        }

        if (!v41) {

            varg0 = v44 = 0x2985(varg1, varg0, varg2);

        }

        v45 = 0x2589(varg0, _balanceOf[address(varg1)]);

        _balanceOf[address(varg1)] = v45;

        emit Transfer(address(varg2), address(varg1), varg0);

        return 1;

    } else {

        v46 = 0x1f92('Insufficient Balance', varg0, _balanceOf[address(varg2)]);

        _balanceOf[address(varg2)] = v46;

        v47 = 0x2589(varg0, _balanceOf[address(varg1)]);

        _balanceOf[address(varg1)] = v47;

        emit Transfer(address(varg2), address(varg1), varg0);

        return 1;

    }

}
