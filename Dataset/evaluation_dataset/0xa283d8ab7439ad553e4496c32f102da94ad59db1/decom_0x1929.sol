function 0x1929(uint256 varg0, uint256 varg1) private { 

    require(owner_4[address(varg1)] != address(0x0), Error('Invalid address (update balance)'));

    v0 = v1 = 1;

    while (owner_4[address(v0)] != address(0x1)) {

        if (owner_4[address(v0)] != address(varg1)) {

            v0 = v2 = owner_4[address(v0)];

        } else {

            break;

        }

    }

    v0 = v3 = 0;

    v4 = address(varg1);

    v5 = v6 = address(v0) == address(0x1);

    if (address(v0) != address(0x1)) {

        v5 = v7 = _balanceOf[address(v0)] >= varg0;

    }

    if (v5) {

        v5 = v8 = owner_4[v4] == address(0x1);

        if (owner_4[v4] != address(0x1)) {

            v5 = varg0 > _balanceOf[owner_4[v4]];

        }

    }

    if (!v5) {

        0x1b0f(varg1);

        0x1640(varg0, varg1);

    } else {

        _balanceOf[address(varg1)] = varg0;

    }

    return ;

}
