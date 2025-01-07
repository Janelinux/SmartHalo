function 0xd68(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != address(0x0), Error('ERC20: transfer from the zero address'));

    require(address(varg1) != address(0x0), Error('ERC20: transfer to the zero address'));

    if (_pool != address(0x0)) {

        if (address(varg1) != _pool) {

            v0 = 0xb11();

            v1 = _SafeAdd(_balanceOf[address(varg1)], varg0);

            require(v1 <= v0, Error('wallet maximum'));

        }

    } else {

        v2 = v3 = address(varg2) == _owner;

        if (address(varg2) != _owner) {

            v2 = address(varg1) == _owner;

        }

        require(v2, Error('trading is not started'));

    }

    require(_balanceOf[address(varg2)] >= varg0, Error('ERC20: transfer amount exceeds balance'));

    _balanceOf[address(varg2)] = _balanceOf[address(varg2)] - varg0;

    v4 = _SafeAdd(_balanceOf[address(varg1)], varg0);

    _balanceOf[address(varg1)] = v4;

    emit Transfer(address(varg2), address(varg1), varg0);

    return ;

}
