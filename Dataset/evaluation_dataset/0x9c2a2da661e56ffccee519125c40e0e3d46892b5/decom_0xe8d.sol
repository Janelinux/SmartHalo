function 0xe8d(uint256 varg0) private { 

    require(stor_1 != 2, Error('ReentrancyGuard: reentrant call'));

    stor_1 = 2;

    v0 = 0x1160();

    _rewardPerTokenStored = v0;

    v1 = 0xe62();

    _lastUpdateTime = v1;

    if (msg.sender != 0) {

        v2 = 0x3cb(msg.sender);

        _rewards[msg.sender] = v2;

        _userRewardPerTokenPaid[msg.sender] = _rewardPerTokenStored;

    }

    require(varg0 > 0, Error('Cannot stake 0'));

    v3 = _SafeAdd(varg0, _totalSupply);

    _totalSupply = v3;

    v4 = _SafeAdd(varg0, _exit[msg.sender]);

    _exit[msg.sender] = v4;

    if (this.balance >= 0) {

        if (_stakingToken.code.size > 0) {

            v5 = v6 = 0;

            while (v5 < 100) {

                MEM[MEM[64] + v5] = MEM[MEM[64] + 32 + v5];

                v5 = v5 + 32;

            }

            if (v5 > 100) {

                MEM[MEM[64] + 100] = 0;

            }

            v7, v8, v9, v10 = _stakingToken.transferFrom(msg.sender, address(this), varg0).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v11 = v12 = 96;

            } else {

                v11 = v13 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v13.data, 0, RETURNDATASIZE());

            }

            if (!v7) {

                require(MEM[v11] <= 0v10, MEM[v11]);

                v14 = new array[](v15.length);

                v16 = v17 = 0;

                while (v16 < v15.length) {

                    v14[v16] = v15[v16];

                    v16 = v16 + 32;

                }

                if (v16 > v15.length) {

                    v14[32] = 0;

                }

                revert(Error(v14, v18, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v11] > 0) {

                    require(32 + v11 + MEM[v11] - (32 + v11) >= 32);

                    require(MEM[32 + v11 + 0] == MEM[32 + v11 + 0]);

                    require(MEM[32 + v11 + 0], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                emit Staked(msg.sender, varg0);

                stor_1 = 1;

                return ;

            }

        } else {

            MEM[4 + MEM[64] + 0] = 32;

            revert(Error('Address: call to non-contract'));

        }

    } else {

        MEM[4 + MEM[64] + 0] = 32;

        revert(Error('Address: insufficient balance for call'));

    }

}
