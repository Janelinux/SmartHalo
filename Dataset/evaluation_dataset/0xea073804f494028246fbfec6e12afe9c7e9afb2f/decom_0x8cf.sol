function 0x8cf(uint256 varg0) private { 

    v0 = 0xfea();

    v1 = 0x1dad(varg0, v0);

    v2 = v3 = _SafeDiv(_totalSupply, v1);

    require(msg.sender != address(0x0), Error('ERC20: burn from the zero address'));

    v4 = _SafeSub('ERC20: burn amount exceeds balance', varg0, _withdrawAll[msg.sender]);

    _withdrawAll[msg.sender] = v4;

    v5 = _SafeSub('SafeMath: subtraction overflow', varg0, _totalSupply);

    _totalSupply = v5;

    MEM[MEM[64]] = varg0;

    emit Transfer(msg.sender, address(0x0), varg0);

    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;

    MEM[4 + MEM[64]] = address(this);

    require(bool(_token.code.size));

    v6, /* uint256 */ v7 = _token.balanceOf(address(this)).gas(msg.gas);

    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v7 = v8.length;

    v9 = v8.data;

    if (v7 < v3) {

        v10 = _SafeSub(MEM[64], v7, v3);

        MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = v10;

        require(bool(_strategy.code.size));

        v11 = _strategy.withdraw(v10).gas(msg.gas);

        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = address(this);

        require(bool(_token.code.size));

        v12, /* uint256 */ v13 = _token.balanceOf(address(this)).gas(msg.gas);

        require(bool(v12), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v13 = v14.length;

        v15 = v14.data;

        v16 = _SafeSub(MEM[64], v7, v13);

        if (v16 < v10) {

            v2 = v7 + v16;

            if (v2 < v7) {

                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                MEM[4 + MEM[64]] = 32;

                revert(Error('SafeMath: addition overflow'));

            }

        }

    }

    if (_token.code.size > 0) {

        v17 = v18 = MEM[64];

        v19 = v20 = 32 + MEM[64];

        while (v21 >= 32) {

            MEM[v17] = MEM[v19];

            v17 = v17 + 32;

            v19 = v19 + 32;

            v21 = v21 - 32;

        }

        MEM[v17] = MEM[v19] & ~(256 ** (32 - v21) - 1) | MEM[v17] & 256 ** (32 - v21) - 1;

        v22, /* uint256 */ v23, /* uint256 */ v24, /* uint256 */ v25 = _token.transfer(msg.sender, v2).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v26 = v27 = 96;

        } else {

            v26 = v28 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v28.data, 0, RETURNDATASIZE());

        }

        if (!v22) {

            require(MEM[v26] <= 0, v25, MEM[v26]);

            v29 = new bytes[](v30.length);

            v31 = v32 = 0;

            while (v31 < v30.length) {

                v29[v31] = v30[v31];

                v31 = v31 + 32;

            }

            v33 = v34 = v30.length + v29.data;

            if (0) {

                MEM[v34 - 0] = ~0x0 & MEM[v34 - 0];

            }

            revert(Error(v29, v35, 'SafeERC20: low-level call failed'));

        } else {

            if (MEM[v26] > 0) {

                require(MEM[v26] >= 32);

                require(MEM[32 + v26], Error('SafeERC20: ERC20 operation did not succeed'));

            }

            return ;

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = 32;

        revert(Error('Address: call to non-contract'));

    }

}
