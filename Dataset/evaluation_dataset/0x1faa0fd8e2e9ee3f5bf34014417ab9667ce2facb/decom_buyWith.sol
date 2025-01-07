function buyWith(address varg0, uint256 varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 == varg0);

    v0 = 0x1935();

    require(v0, Error('TokenSale: Sale is not active'));

    v1 = v2 = !_whitelistedOnly;

    if (_whitelistedOnly) {

        v1 = v3 = 0xff & _whitelisted[msg.sender];

    }

    require(v1, Error('TokenSale: Account is not whitelisted'));

    require(map_12[varg0], Error('TokenSale: Stable coin not supported', 'TokenSale: Stable coin not supported'));

    require(varg1 > 0, Error('TokenSale: Amount is 0'));

    v4 = _SafeAdd(varg1, _collected);

    require(v4 <= _cap, Error('TokenSale: Insufficient remaining amount'));

    v5 = _SafeAdd(varg1, _balances[msg.sender]);

    require(v5 >= _minPerAccount, Error('TokenSale: Amount too low'));

    v6 = v7 = !_maxPerAccount;

    if (_maxPerAccount) {

        v8 = _SafeAdd(_balances[msg.sender], varg1);

        v6 = v9 = v8 <= _maxPerAccount;

    }

    require(v6, Error('TokenSale: Amount too high'));

    v10 = new bytes[](4);

    MEM[v10.data] = 0x313ce56700000000000000000000000000000000000000000000000000000000 | 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v10.data];

    v11 = v12 = 0;

    while (v11 < v10.length) {

        MEM[v11 + MEM[64]] = v10[v11];

        v11 += 32;

    }

    if (v11 > v10.length) {

        MEM[MEM[64] + v10.length] = v12;

    }

    v13 = v14, v15, v16 = varg0.staticcall(MEM[(MEM[64]) len 4], MEM[(MEM[64]) len 0]).gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v17 = v18 = 96;

    } else {

        v17 = v19 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v19.data, 0, RETURNDATASIZE());

    }

    if (v14) {

        v13 = 32 == MEM[v17];

    }

    if (v13) {

        require(v16 + MEM[v17] - v16 >= 32);

        v20 = MEM[v16];

        require(v20 == v20 & 0xff);

        goto 0x218cB0x1231;

    } else {

        v20 = v21 = 18;

    }

    require(v20 & 0xff >= 2, Panic(17));

    v22 = v23 = 10;

    v24 = v25 = (v20 & 0xff) - 2 & 0xff;

    if (v25) {

        if (v23) {

            if (v23 == 1) {

                v26 = v27 = 1;

            } else if (v23 == 2) {

                require(v25 <= 255, Panic(17));

                v26 = v28 = 1 << v25;

            } else if (!((v23 < 11) & (v25 < 78) | (v23 < 307) & (v25 < 32))) {

                v29 = v30 = 1;

                while (v24 > v30) {

                    if (v22 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v22) {

                        break;

                    }

                    require(v22 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v22, Panic(17));

                    if (v24 & v30) {

                        v29 *= v22;

                    }

                    v24 = v24 >> v30;

                    v22 *= v22;

                }

                require(v29 <= 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v22, Panic(17));

                v26 = v31 = v22 * v29;

                goto 0x1ec20x27bcB0x1261;

            } else {

                v26 = v32 = v23 ** v25;

            }

        } else {

            v26 = v33 = 0;

        }

    } else {

        v26 = v34 = 1;

    }

    require(!(varg1 & (v26 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / varg1)), Panic(17));

    require(varg0.code.size);

    v35, v36 = varg0.allowance(msg.sender, this).gas(msg.gas);

    require(v35); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v36 >= varg1 * v26, Error('TokenSale: Insufficient stable coin allowance'));

    MEM[MEM[64] + 68] = this;

    MEM[MEM[64] + 100] = varg1 * v26;

    MEM[MEM[64] + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 | 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & msg.sender;

    v37 = v38 = 0;

    while (v37 < 100) {

        MEM[v37 + MEM[64]] = MEM[32 + (MEM[64] + v37)];

        v37 += 32;

    }

    if (v37 > 100) {

        MEM[MEM[64] + 100] = v38;

    }

    v39 = v40, v41, v42 = varg0.call(MEM[(MEM[64]) len 100], MEM[(MEM[64]) len 0]).gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v43 = v44 = 96;

    } else {

        v43 = v45 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v45.data, 0, RETURNDATASIZE());

    }

    if (v40) {

        v39 = v46 = !MEM[v43];

        if (MEM[v43]) {

            require(v42 + MEM[v43] - v42 >= 32);

            v39 = MEM[v42];

            require(v39 == v39);

            goto 0x229dB0x13ac;

        }

    }

    require(v39, Error('SafeERC20: TransferFrom failed'));

    v47 = _SafeAdd(_balances[msg.sender], varg1);

    _balances[msg.sender] = v47;

    v48 = _SafeAdd(_collected, varg1);

    _collected = v48;

    v49 = _SafeAdd(map_c[varg0], varg1 * v26);

    map_c[varg0] = v49;

    if (!owner_b[msg.sender]) {

        if (owner_b[msg.sender]) {

            goto 0x9ea0x2303B0x1ea0B0x1455;

        } else {

            v50 = v51 = 1;

            _getParticipantsNumber.length += v51;

            _getParticipantsNumber[_getParticipantsNumber.length] = msg.sender;

            owner_b[msg.sender] = _getParticipantsNumber.length;

        }

    }

    emit Purchased(msg.sender, varg1);

}
