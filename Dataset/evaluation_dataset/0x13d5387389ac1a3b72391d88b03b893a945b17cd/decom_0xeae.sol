function 0xeae() private { 

    v0 = 0x1ba3();

    if (_epoch < v0) {

        v1 = 0x1492();

        v2 = 0x252a();

        if (!v1) {

            if (v2) {

                v3 = _SafeMul(v2, _feesPercentage);

                require(0xde0b6b3a7640000, Panic(18));

                v4 = _SafeSub(_epochSeniorLiquidity, v2);

                _epochSeniorLiquidity = v4;

                v5 = _SafeSub(v2, v3 / 0xde0b6b3a7640000);

                v6 = _SafeAdd(_epochJuniorLiquidity, v5);

                _epochJuniorLiquidity = v6;

            }

        } else {

            v7 = _SafeMul(v1, _feesPercentage);

            require(0xde0b6b3a7640000, Panic(18));

            v8 = _SafeSub(_epochJuniorLiquidity, v1);

            _epochJuniorLiquidity = v8;

            v9 = _SafeSub(v1, v7 / 0xde0b6b3a7640000);

            v10 = _SafeAdd(_epochSeniorLiquidity, v9);

            _epochSeniorLiquidity = v10;

        }

        emit EpochEnd(_epoch, v2, v1);

        require(_priceOracle.code.size);

        v11, v12 = _priceOracle.getPrice().gas(msg.gas);

        require(v11); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        _epochEntryPrice = v12;

        v13 = 0x172b();

        _history_epochJuniorTokenPrice[_epoch] = v13;

        v14 = _SafeMul(_queuedJuniorsUnderlyingIn, 0xde0b6b3a7640000);

        require(v13, Panic(18));

        v15 = _SafeMul(_queuedJuniorTokensBurn, v13);

        require(0xde0b6b3a7640000, Panic(18));

        if (v14 / v13 <= _queuedJuniorTokensBurn) {

            if (_queuedJuniorTokensBurn > v14 / v13) {

                v16 = _SafeSub(_queuedJuniorTokensBurn, v14 / v13);

                v17 = v18 = _juniorToken;

                goto 0x27ff0x274cB0x1055;

            }

        } else {

            v19 = _SafeSub(v14 / v13, _queuedJuniorTokensBurn);

            v17 = v20 = _juniorToken;

        }

        require(v17.code.size);

        v21 = v17.burn(address(this), v16).gas(msg.gas);

        require(v21); // checks call status, propagates error data on error

        v22 = 0x25de();

        _history_epochSeniorTokenPrice[_epoch] = v22;

        v23 = _SafeMul(_queuedSeniorsUnderlyingIn, 0xde0b6b3a7640000);

        require(v22, Panic(18));

        v24 = _SafeMul(_queuedSeniorTokensBurn, v22);

        require(0xde0b6b3a7640000, Panic(18));

        if (v23 / v22 <= _queuedSeniorTokensBurn) {

            if (_queuedSeniorTokensBurn > v23 / v22) {

                v25 = _SafeSub(_queuedSeniorTokensBurn, v23 / v22);

                v26 = v27 = _seniorToken;

                goto 0x27ff0x2886B0x1062;

            }

        } else {

            v28 = _SafeSub(v23 / v22, _queuedSeniorTokensBurn);

            v26 = v29 = _seniorToken;

        }

        require(v26.code.size);

        v30 = v26.burn(address(this), v25).gas(msg.gas);

        require(v30); // checks call status, propagates error data on error

        v31 = _SafeSub(_epochSeniorLiquidity, v24 / 0xde0b6b3a7640000);

        v32 = _SafeAdd(v31, _queuedSeniorsUnderlyingIn);

        _epochSeniorLiquidity = v32;

        v33 = _SafeAdd(_queuedSeniorsUnderlyingOut, v24 / 0xde0b6b3a7640000);

        _queuedSeniorsUnderlyingOut = v33;

        _queuedSeniorsUnderlyingIn = 0;

        v34 = _SafeSub(_epochJuniorLiquidity, v15 / 0xde0b6b3a7640000);

        v35 = _SafeAdd(v34, _queuedJuniorsUnderlyingIn);

        _epochJuniorLiquidity = v35;

        v36 = _SafeAdd(_queuedJuniorsUnderlyingOut, v15 / 0xde0b6b3a7640000);

        _queuedJuniorsUnderlyingOut = v36;

        _queuedJuniorsUnderlyingIn = 0;

        _queuedJuniorTokensBurn = 0;

        _queuedSeniorTokensBurn = 0;

        require(_seniorRateModel.code.size);

        v37, v38, v39 = _seniorRateModel.getRates(_epochJuniorLiquidity, _epochSeniorLiquidity).gas(msg.gas);

        require(v37); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 64);

        _epochDownsideProtectionRate = v39;

        _epochUpsideExposureRate = v38;

        _epoch = v0;

        return ;

    } else {

        return ;

    }

}
