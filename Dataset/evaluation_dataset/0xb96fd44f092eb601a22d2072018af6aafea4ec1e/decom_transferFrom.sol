function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 == varg2);

    v0 = v1 = 0;

    if (varg0 - _transfer) {

        if (varg1 - stor_b_0_19) {

            if (!(0xff & owner_1[varg0])) {

                if (!(0xff & owner_1[varg1])) {

                    require(varg2 <= _balanceOf[varg0]);

                    require(varg2 <= _allowance[msg.sender]);

                    v2 = _SafeSub(_balanceOf[varg0], varg2);

                    _balanceOf[varg0] = v2;

                    v3 = _SafeAdd(_balanceOf[varg1], varg2);

                    _balanceOf[varg1] = v3;

                    emit Transfer(varg0, varg1, varg2);

                    v0 = 1;

                }

            }

        } else {

            require(varg2 <= _balanceOf[varg0]);

            v4 = _SafeSub(_balanceOf[varg0], varg2);

            _balanceOf[varg0] = v4;

            v5 = _SafeAdd(_balanceOf[varg1], varg2);

            _balanceOf[varg1] = v5;

            emit Transfer(varg0, varg1, varg2);

            v0 = v6 = 1;

        }

    } else {

        require(varg2 <= _balanceOf[varg0]);

        require(varg2 <= _allowance[msg.sender]);

        v7 = _SafeSub(_balanceOf[varg0], varg2);

        _balanceOf[varg0] = v7;

        v8 = _SafeAdd(_balanceOf[varg1], varg2);

        _balanceOf[varg1] = v8;

        emit Transfer(stor_9_0_19, varg1, varg2);

        v0 = v9 = 1;

    }

    return v0;

}
