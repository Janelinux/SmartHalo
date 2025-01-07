function initialize(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = v1 = !_initialize;

    if (!_initialize) {

        v0 = v2 = stor_0_0_0 < 1;

    }

    if (!v0) {

        v0 = v3 = !this.code.size;

        if (!bool(this.code.size)) {

            v0 = 1 == stor_0_0_0;

        }

    }

    require(v0, Error('Initializable: contract is already initialized'));

    stor_0_0_0 = 1;

    if (!_initialize) {

        _initialize = 1;

    }

    if (_initialize) {

        if (_initialize) {

            require(v4.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

            v5 = 0x2d23(array_65.length);

            if (v5 > 31) {

                v6 = v7 = array_65.data;

                v6 = v8 = v7 + 1;

                while (v6 < v7 + (v5 + 31 >> 5)) {

                    STORAGE[v6] = 0;

                    v6 += 1;

                }

                goto 0x3244B0x2246B0x1bffB0x1364B0x826;

            }

            v9 = v10 = 32;

            if (v4.length > 31 == 1) {

                v11 = v12 = 0;

                v13 = v14 = array_65.data;

                while (v11 < 0) {

                    STORAGE[v13] = MEM[v9 + 0x474f5355];

                    v9 += v10;

                    v13 = v13 + 1;

                    v11 += v10;

                }

                if (0 < v4.length) {

                    STORAGE[v13] = ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v9 + 0x474f5355];

                }

                array_65 = 9;

                goto 0x2252B0x1bffB0x1364B0x826;

            } else {

                v15 = v16 = 0;

                if (v4.length) {

                    v17 = v4.data;

                }

                array_65 = 0x8 | ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & v15;

            }

            require(v18.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

            v19 = 0x2d23(array_66.length);

            if (v19 > 31) {

                v20 = v21 = array_66.data;

                v20 = v22 = v21 + 1;

                while (v20 < v21 + (v19 + 31 >> 5)) {

                    STORAGE[v20] = 0;

                    v20 += 1;

                }

                goto 0x3244B0x2252B0x1bffB0x1364B0x826;

            }

            v23 = v24 = 32;

            if (v18.length > 31 == 1) {

                v25 = v26 = 0;

                v27 = v28 = array_66.data;

                while (v25 < 0) {

                    STORAGE[v27] = MEM[v23 + 0x24474f53550000000000000000000000000000000000000000000000000000008c379a000000000000000000000000000000000000000000000000000000000];

                    v23 += v24;

                    v27 = v27 + 1;

                    v25 += v24;

                }

                if (0 < v18.length) {

                    STORAGE[v27] = ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffff & MEM[v23 + 0x24474f53550000000000000000000000000000000000000000000000000000008c379a000000000000000000000000000000000000000000000000000000000];

                }

                array_66 = 11;

                goto 0x4d59B0x1bffB0x1364B0x826;

            } else {

                v29 = v30 = 0;

                if (v18.length) {

                    v31 = v18.data;

                }

                array_66 = 0xa | ~0xffffffffffffffffffffffffffffffffffffffffffffffffffffff & v29;

            }

            if (_initialize) {

                if (_initialize) {

                    _paused = 0;

                    0x1c38();

                    0x1c38();

                    _supplyCap = varg0;

                    0x198f();

                    _paused = 1;

                    MEM[MEM[64]] = msg.sender;

                    emit Paused(msg.sender);

                    0x1762(msg.sender, 0);

                    0x1762(msg.sender, 0x7804d923f43a17d325d77e781528e0793b2edd9890ab45fc64efd7b4b427744c);

                    0x1762(msg.sender, 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a);

                    0x1762(msg.sender, 0x189ab7a9244df0848122154315af71fe140f3db0fe014031783b0946b8c9d2e3);

                    if (_initialize) {

                        goto 0x415c;

                    } else {

                        _initialize = 0;

                        emit Initialized(1);

                    }

                    exit;

                } else {

                    MEM[4 + MEM[64]] = 32;

                    revert(Error('Initializable: contract is not initializing'));

                }

            } else {

                MEM[4 + MEM[64]] = 32;

                revert(Error('Initializable: contract is not initializing'));

            }

        } else {

            MEM[4 + MEM[64]] = 32;

            revert(Error('Initializable: contract is not initializing'));

        }

    } else {

        MEM[4 + MEM[64]] = 32;

        revert(Error('Initializable: contract is not initializing'));

    }

}
