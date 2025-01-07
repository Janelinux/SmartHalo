function 0xfe8(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = address(varg2);

    v1 = v2 = !(0xff & _isFeeExempt[v0]);

    if (v2) {

        v3 = address(varg1);

        v1 = !(0xff & _isFeeExempt[v3]);

    }

    if (v1) {

        require(stor_a_20_20, Error('tradingAllowed'));

    }

    v4 = address(varg2);

    v5 = v6 = !(0xff & _isFeeExempt[v4]);

    if (v6) {

        v7 = address(varg1);

        v5 = v8 = !(0xff & _isFeeExempt[v7]);

    }

    if (v5) {

        v5 = v9 = address(varg1) != _pair;

    }

    if (v5) {

        v5 = address(varg1) != 57005;

    }

    if (v5) {

        v10 = 0xb12();

        v11 = address(varg1);

        v12 = _SafeAdd(_balanceOf[v11], varg0);

        require(v12 <= v10, Error('Exceeds maximum wallet amount.'));

    }

    v13 = v14 = address(varg1) == _pair;

    if (v14) {

        v15 = address(varg2);

        v13 = !(0xff & _isFeeExempt[v15]);

    }

    if (v13) {

        v16 = _SafeAdd(stor_14, 1);

        stor_14 = v16;

    }

    0x1611(varg0, varg1, varg2);

    require(address(varg2) - 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) - 0, Error('ERC20: transfer to the zero address'));

    require(varg0 > 0, Error('Transfer amount must be greater than zero'));

    v17 = address(varg2);

    require(varg0 <= _balanceOf[v17], Error('You are trying to transfer more than your balance'));

    if (address(varg2) != _pair) {

        v18 = 0x6eb();

        v19 = v20 = varg0 <= v18;

        if (varg0 > v18) {

            v21 = address(varg2);

            v19 = v22 = 0xff & _isFeeExempt[v21];

        }

        if (!v19) {

            v23 = address(varg1);

            v19 = 0xff & _isFeeExempt[v23];

        }

        require(v19, Error('TX Limit Exceeded'));

    }

    v24 = 0xb3b();

    v25 = v26 = varg0 <= v24;

    if (varg0 > v24) {

        v27 = address(varg2);

        v25 = v28 = 0xff & _isFeeExempt[v27];

    }

    if (!v25) {

        v29 = address(varg1);

        v25 = 0xff & _isFeeExempt[v29];

    }

    require(v25, Error('TX Limit Exceeded'));

    v30 = address(varg2);

    v31 = _SafeSub(varg0, _balanceOf[v30]);

    v32 = address(varg2);

    _balanceOf[v32] = v31;

    v33 = address(varg2);

    v34 = v35 = !(0xff & _isFeeExempt[v33]);

    if (v35) {

        v36 = address(varg1);

        v34 = !(0xff & _isFeeExempt[v36]);

    }

    if (v34) {

        varg0 = v37 = 0x1bfe(varg0, varg1, varg2);

    }

    v38 = address(varg1);

    v39 = _SafeAdd(_balanceOf[v38], varg0);

    v40 = address(varg1);

    _balanceOf[v40] = v39;

    v41 = address(varg2);

    v42 = v43 = !(0xff & _isFeeExempt[v41]);

    if (v43) {

        v44 = address(varg1);

        v42 = !(0xff & _isFeeExempt[v44]);

    }

    if (v42) {

        varg0 = v45 = 0x1bfe(varg0, varg1, varg2);

    }

    emit Transfer(address(varg2), address(varg1), varg0);

    return ;

}
