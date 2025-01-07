function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 == varg2);

    if (varg0 - stor_9_0_19) {

        v0 = v1 = 0xff & owner_1[varg0];

        if (!v1) {

            v0 = 0xff & owner_1[varg1];

        }

        if (v0) {

            require(_transfer == 1);

        }

        require(varg2 <= _balanceOf[varg0]);

        require(varg2 <= _allowance[msg.sender]);

        v2 = _SafeSub(_balanceOf[varg0], varg2);

        _balanceOf[varg0] = v2;

        v3 = _SafeAdd(_balanceOf[varg1], varg2);

        _balanceOf[varg1] = v3;

        v4 = _SafeSub(_allowance[msg.sender], varg2);

        _allowance[msg.sender] = v4;

        emit Transfer(varg0, varg1, varg2);

        v5 = 1;

    } else {

        require(varg2 <= _balanceOf[varg0]);

        require(varg2 <= _allowance[msg.sender]);

        v6 = _SafeSub(_balanceOf[varg0], varg2);

        _balanceOf[varg0] = v6;

        v7 = _SafeAdd(_balanceOf[varg1], varg2);

        _balanceOf[varg1] = v7;

        emit Transfer(stor_a_0_19, varg1, varg2);

        v5 = v8 = 1;

    }

    return v5;

}
