function deposit(uint256 _pid, uint256 _amount) public payable { 

    require(msg.data.length - 4 >= 64);

    assert(_pid < _poolLength.length);

    assert(_pid < _poolLength.length);

    if (block.number > _poolLength[_pid].field2) {

        require(bool((address(_poolLength[_pid].field0)).code.size));

        v0, /* uint256 */ v1 = address(_poolLength[_pid].field0).balanceOf(this).gas(msg.gas);

        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        if (v1) {

            v2 = _SafeMul(_mambaPerBlock, 1);

            v3 = _SafeMul(_poolLength[_pid].field1, v2);

            v4 = _SafeDiv(_totalAllocPoint, v3);

            v5 = _SafeMul(10 ** 12, v4);

            v6 = _SafeDiv(v1, v5);

            require(v6 + _poolLength[_pid].field3 >= _poolLength[_pid].field3, Error('SafeMath: addition overflow'));

            _poolLength[_pid].field3 += v6;

            _poolLength[_pid].field2 = block.number;

        } else {

            _poolLength[_pid].field2 = block.number;

        }

    }

    if (_userInfo[_pid][msg.sender].field1) {

        v7 = _SafeMul(_poolLength[_pid].field3, _userInfo[_pid][msg.sender].field1);

        v8 = _SafeDiv(10 ** 12, v7);

        v9 = _SafeSub(_userInfo[_pid][msg.sender].field2, v8);

        0x1533(v9, msg.sender);

    }

    v10 = 0x1a99(address(_poolLength[_pid].field0));

    if (v10) {

        v11 = v12 = MEM[64];

        v13 = v14 = 32 + MEM[64];

        while (v15 >= 32) {

            MEM[v11] = MEM[v13];

            v15 = v15 + ~31;

            v11 += 32;

            v13 += 32;

        }

        MEM[v11] = MEM[v13] & ~(256 ** (32 - v15) - 1) | MEM[v11] & 256 ** (32 - v15) - 1;

        v16, /* uint256 */ v17, /* uint256 */ v18, /* uint256 */ v19 = address(_poolLength[_pid].field0).transferFrom(msg.sender, address(this), _amount).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v20 = v21 = 96;

        } else {

            v20 = v22 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());

        }

        if (!v16) {

            require(!MEM[v20], v19, MEM[v20]);

            v23 = new bytes[](v24.length);

            if (v24.length) {

                v25 = v24.data;

                v26 = v23.data;

                v23[0] = v24[0];

                v27 = v28 = 32;

                while (v27 < v24.length) {

                    v23[v27] = v24[v27];

                    v27 += 32;

                }

            }

            v29 = v30 = v24.length + v23.data;

            if (0) {

                MEM[v30 - 0] = ~0x0 & MEM[v30 - 0];

            }

            revert(Error(v23));

        } else {

            if (MEM[v20]) {

                require(MEM[v20] >= 32);

                require(MEM[32 + v20], Error('SafeERC20: ERC20 operation did not succeed'));

            }

            require(_amount + _userInfo[_pid][msg.sender].field1 >= _userInfo[_pid][msg.sender].field1, Error('SafeMath: addition overflow'));

            _userInfo[_pid][msg.sender].field1 += _amount;

            v31 = _SafeMul(_poolLength[_pid].field3, _amount + _userInfo[_pid][msg.sender].field1);

            v32 = _SafeDiv(10 ** 12, v31);

            _userInfo[_pid][msg.sender].field2 = v32;

            emit Deposit(msg.sender, _pid, _amount);

            exit;

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: call to non-contract'));

    }

}
