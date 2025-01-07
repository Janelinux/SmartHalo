function 0xc27(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    v0 = varg0 * 5 / 100;

    require(address(varg2) != 0, Error('ERC20: burn from the zero address'));

    v1 = new struct(3);

    v1.word0 = 34;

    v2 = address(varg2);

    v3 = _SafeSub(v1, v0, _balanceOf[v2]);

    v4 = address(varg2);

    _balanceOf[v4] = v3;

    v5 = new struct(2);

    v5.word0 = 30;

    v6 = v5.data;

    v5.word1 = 'SafeMath: subtraction overflow';

    v7 = _SafeSub(v5, v0, _totalSupply);

    _totalSupply = v7;

    MEM[MEM[64]] = v0;

    emit Transfer(address(varg2), 0, v0);

    v8 = varg0 - v0;

    v9 = new struct(3);

    v9.word0 = 38;

    v10 = address(varg2);

    v11 = _SafeSub(v9, v8, _balanceOf[v10]);

    v12 = address(varg2);

    _balanceOf[v12] = v11;

    v13 = address(varg1);

    if (_balanceOf[v13] + v8 >= _balanceOf[v13]) {

        v14 = address(varg1);

        _balanceOf[v14] = _balanceOf[v13] + v8;

        MEM[MEM[64]] = v8;

        emit Transfer(address(varg2), address(varg1), v8);

        return ;

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = 32;

        revert(Error('SafeMath: addition overflow'));

    }

}
