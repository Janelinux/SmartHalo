function 0xc7b(uint256 varg0, uint256 varg1) private { 

    if (stor_0_1_1) {

        v0 = v1 = this.code.size <= 0;

    } else {

        v0 = v2 = !stor_0_0_0;

    }

    require(v0, Error('Initializable: contract is already initialized'));

    if (!stor_0_1_1) {

        stor_0_1_1 = 1;

        stor_0_0_0 = 1;

    }

    require(varg1.length != 0, Error('Invalid name'));

    require(varg0.length != 0, Error('Invalid symbol'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    0x23a0();

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    v3 = v4 = varg1.data;

    v5 = 0x3876(_name.length);

    if (varg1.length) {

        if (31 < varg1.length) {

            _name.length = 1 + (varg1.length + varg1.length);

            if (varg1.length) {

                while (v4 + varg1.length > v3) {

                    STORAGE[v6] = MEM[v3];

                    v3 += 32;

                    v6 += 1;

                }

            }

        } else {

            _name.length = varg1.length + varg1.length | ~0xff & MEM[v4];

        }

    } else {

        _name.length = 0;

    }

    while (v7 + (31 + v5 >> 5) > v6) {

        STORAGE[v6] = 0;

        v6 += 1;

    }

    v8 = v9 = varg0.data;

    v10 = 0x3876(_symbol.length);

    if (varg0.length) {

        if (31 < varg0.length) {

            _symbol.length = 1 + (varg0.length + varg0.length);

            if (varg0.length) {

                while (v9 + varg0.length > v8) {

                    STORAGE[v11] = MEM[v8];

                    v8 += 32;

                    v11 += 1;

                }

            }

        } else {

            _symbol.length = varg0.length + varg0.length | ~0xff & MEM[v9];

        }

    } else {

        _symbol.length = 0;

    }

    while (v12 + (31 + v10 >> 5) > v11) {

        STORAGE[v11] = 0;

        v11 += 1;

    }

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    0x23a0();

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    require(stor_0_1_1, Error('Initializable: contract is not initializing'));

    0x1351(msg.sender, 0);

    if (!stor_0_1_1) {

        stor_0_1_1 = 0;

    }

    return ;

}
