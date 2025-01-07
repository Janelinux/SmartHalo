function 0xc6f(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v0 = v1 = _owner != address(varg2);

    if (_owner != address(varg2)) {

        v0 = v2 = _owner != address(varg1);

    }

    if (!v0) {

        stor_a = 0;

        stor_b = 0;

    } else {

        v3 = v4 = !uint8(owner_6[address(varg2)]);

        if (!bool(uint8(owner_6[address(varg2)]))) {

            v3 = v5 = !uint8(owner_6[address(varg1)]);

        }

        require(v3);

        stor_a = 0;

        stor_b = stor_c;

        v6 = v7 = address(owner_f) == address(varg2);

        if (v7) {

            v6 = v8 = stor_e_0_19 != address(varg1);

        }

        if (v6) {

            v6 = v9 = !uint8(map_5[address(varg1)]);

        }

        if (v6) {

            v6 = v10 = uint8(owner_f >> 184);

        }

        if (v6) {

            require(varg0 <= stor_10, Error('Exceeds the _maxTxAmount.'));

            v11 = 0x4b2(varg1);

            v12 = _SafeAdd(v11, varg0);

            require(v12 <= stor_11, Error('Exceeds the maxWalletSize.'));

        }

        v13 = 0x4b2(this);

        v14 = v15 = !uint8(owner_f >> 168);

        if (!bool(uint8(owner_f >> 168))) {

            v14 = v16 = address(owner_f) != address(varg2);

        }

        if (v14) {

            v14 = v17 = uint8(owner_f >> 176);

        }

        if (v14) {

            v14 = v18 = v13 > 0;

        }

        if (v14) {

            0x10c8(v13);

            if (this.balance) {

                v19 = _manualswap.call().value(this.balance).gas(2300 * !this.balance);

                require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                goto 0xfb4;

            }

        }

    }

    varg0 = v20 = 0;

    varg0 = v21 = 5184;

    varg0 = v22 = stor_a;

    varg0 = v23 = stor_b;

    varg0 = v24 = 0;

    v25 = v26 = 5545;

    v27 = v28 = 100;

    v29 = v30 = 0xa83(v22, varg0);

    while (1) {

        varg0 = _SafeDiv(v27, v29);

        v25 = v31 = 5564;

        v27 = v32 = 100;

        v29 = 0xa83(varg0, varg0);

    }

    v33 = _SafeSub('SafeMath: subtraction overflow', varg0, varg0);

    v34 = _SafeSub('SafeMath: subtraction overflow', varg0, v33);

    v35, v36 = 0x13a4();

    v37 = _SafeDiv(v35, v36);

    v38 = 0xa83(v37, 4799);

    v39 = 0xa83(v37, varg0);

    v40 = 0xa83(v37, varg0);

    v41 = _SafeSub('SafeMath: subtraction overflow', v39, v38);

    v42 = _SafeSub('SafeMath: subtraction overflow\x00\x00\x1eSafeMath: subtraction overflow', v40, v41);

    v43 = _SafeSub('SafeMath: subtraction overflow', v38, owner_2[address(0xfd2)]);

    owner_2[address(0xfd2)] = v43;

    v44 = 0x14c2(v42, owner_2[address(varg2)]);

    owner_2[address(varg2)] = v44;

    v45, v46 = 0x13a4();

    v47 = _SafeDiv(v45, v46);

    v48 = 0xa83(v47, varg0);

    v49 = 0x14c2(v48, owner_2[this]);

    owner_2[this] = v49;

    v50 = _SafeSub('SafeMath: subtraction overflow', v39, stor_8);

    stor_8 = v50;

    v51 = 0x14c2(varg0, stor_9);

    stor_9 = v51;

    emit Transfer(address(0xfd2), address(varg2), v34);

    return ;

}
