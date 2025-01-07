function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(varg2 <= _balanceOf[varg0]);

    require(varg2 <= _allowance[msg.sender]);

    require(varg1);

    if (!(0xff & owner_5[varg0])) {

        v0 = v1 = varg2 <= stor_9;

        if (varg2 > stor_9) {

            v0 = 0xff & owner_5[varg1];

        }

        require(v0, Error('amount exceeds tx cap'));

        require(varg2 <= _balanceOf[varg0]);

        _balanceOf[varg0] = _balanceOf[varg0] - varg2;

        v2 = 0x7aa(varg2, _burnPct);

        require(v2 <= varg2);

        require(varg2 - v2 + _balanceOf[varg1] >= _balanceOf[varg1]);

        _balanceOf[varg1] += varg2 - v2;

        require(v2 <= _totalSupply);

        _totalSupply = _totalSupply - v2;

        require(varg2 <= _allowance[msg.sender]);

        _allowance[msg.sender] = _allowance[msg.sender] - varg2;

        emit Transfer(varg0, varg1, varg2 - v2);

        emit Transfer(varg0, 0, v2);

        v3 = v4 = 1;

    } else {

        require(varg2 <= _balanceOf[varg0]);

        _balanceOf[varg0] = _balanceOf[varg0] - varg2;

        require(varg2 + _balanceOf[varg1] >= _balanceOf[varg1]);

        _balanceOf[varg1] += varg2;

        emit Transfer(varg0, varg1, varg2);

        v3 = v5 = 1;

    }

    return v3;

}
