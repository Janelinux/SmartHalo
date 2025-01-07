function 0x5aa(uint256 varg0) private { 

    v0 = 0xa5c();

    v1 = _SafeMul(varg0, v0);

    v2 = v3 = _SafeDiv(_totalSupply, v1);

    require(msg.sender, Error('ERC20: burn from the zero address'));

    v4 = _SafeSub('ERC20: burn amount exceeds balance', varg0, _withdrawAll[msg.sender]);

    _withdrawAll[msg.sender] = v4;

    v5 = _SafeSub('SafeMath: subtraction overflow', varg0, _totalSupply);

    _totalSupply = v5;

    MEM[MEM[64]] = varg0;

    emit Transfer(msg.sender, 0, varg0);

    MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;

    MEM[MEM[64] + 4] = this;

    require(bool(_token.code.size));

    v6, /* uint256 */ v7 = _token.balanceOf(this).gas(msg.gas);

    require(bool(v6), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    v8 = 'SafeMath: subtraction overflow';

    require(RETURNDATASIZE() >= 32);

    v7 = v8.length;

    if (v7 < v3) {

        v9 = _SafeSub(MEM[64], v7, v3);

        MEM[MEM[64]] = 0x2e1a7d4d00000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = v9;

        require(bool(_strategy.code.size));

        v10 = _strategy.withdraw(v9).gas(msg.gas);

        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = this;

        require(bool(_token.code.size));

        v11, /* uint256 */ v12 = _token.balanceOf(this).gas(msg.gas);

        require(bool(v11), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v13 = 'SafeMath: subtraction overflow';

        require(RETURNDATASIZE() >= 32);

        v12 = v13.length;

        v14 = _SafeSub(MEM[64], v7, v12);

        if (v14 < v9) {

            v2 = v14 + v7;

            if (v2 < v7) {

                MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                MEM[MEM[64] + 4] = 32;

                revert(Error('SafeMath: addition overflow'));

            }

        }

    }

    if (bool(_token.code.size)) {

        v15 = v16 = MEM[64];

        v17 = v18 = 32 + MEM[64];

        while (v19 >= 32) {

            MEM[v15] = MEM[v17];

            v19 = v19 - 32;

            v15 += 32;

            v17 += 32;

        }

        MEM[v15] = MEM[v17] & ~(256 ** (32 - v19) - 1) | MEM[v15] & 256 ** (32 - v19) - 1;

        v20, /* uint256 */ v21, /* uint256 */ v22, /* uint256 */ v23 = _token.transfer(msg.sender, 0xa9059cbb00000000000000000000000000000000000000000000000000000000 | uint224(address(msg.sender)), v2).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v24 = v25 = 96;

        } else {

            v24 = v26 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v26.data, 0, RETURNDATASIZE());

        }

        if (!v20) {

            require(!MEM[v24], v23, MEM[v24]);

            v27 = new bytes[](v28.length);

            if (v28.length) {

                v29 = v28.data;

                v30 = v27.data;

                v27[0] = v28[0];

                v31 = v32 = 32;

                while (v31 < v28.length) {

                    v27[v31] = v28[v31];

                    v31 += 32;

                }

            }

            v33 = v34 = v28.length + v27.data;

            if (0) {

                MEM[v34 - 0] = ~0x0 & MEM[v34 - 0];

            }

            revert(Error(v27));

        } else {

            if (MEM[v24]) {

                require(MEM[v24] >= 32);

                require(MEM[32 + v24], Error('SafeERC20: ERC20 operation did not succeed'));

            }

            return ;

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: call to non-contract'));

    }

}
