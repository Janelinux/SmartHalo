function 0x13f5(uint256 varg0, uint256 varg1) private { 

    v0, v1 = 0x1056();

    if (v1 > 0) {

        _rewardPerTokenStored = v1;

        _lastUpdateTime = v0;

        if (address(varg1) != 0) {

            v2 = 0xf47(v1, varg1);

            v3 = address(varg1);

            _rewards[v3] = v2;

            v4 = address(varg1);

            _userRewardPerTokenPaid[v4] = v1;

        }

    }

    require(stor_0 != 2, Error('ReentrancyGuard: reentrant call'));

    stor_0 = 2;

    v5 = _SafeAdd(_totalSupply, varg0);

    _totalSupply = v5;

    v6 = address(varg1);

    v7 = _SafeAdd(_exit[v6], varg0);

    v8 = address(varg1);

    _exit[v8] = v7;

    if (this.balance >= 0) {

        if (0x9911b111860bd8a611c2a6654ff38208208055d4.code.size > 0) {

            v9 = v10 = 0;

            while (v9 < 100) {

                MEM[MEM[64] + v9] = MEM[MEM[64] + 32 + v9];

                v9 = v9 + 32;

            }

            if (v9 > 100) {

                MEM[MEM[64] + 100] = 0;

            }

            v11, v12, v13, v14 = 0x9911b111860bd8a611c2a6654ff38208208055d4.transferFrom(msg.sender, address(this), varg0).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v15 = v16 = 96;

            } else {

                v15 = v17 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v17.data, 0, RETURNDATASIZE());

            }

            if (!v11) {

                require(MEM[v15] <= 0v14, MEM[v15]);

                v18 = new array[](v19.length);

                v20 = v21 = 0;

                while (v20 < v19.length) {

                    v18[v20] = v19[v20];

                    v20 = v20 + 32;

                }

                if (v20 > v19.length) {

                    v18[32] = 0;

                }

                revert(Error(v18, v22, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v15] > 0) {

                    require(32 + v15 + MEM[v15] - (32 + v15) >= 32);

                    require(MEM[32 + v15 + 0] == MEM[32 + v15 + 0]);

                    require(MEM[32 + v15 + 0], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                emit Transfer(0, address(varg1), varg0);

                stor_0 = 1;

                emit Staked(address(varg1), varg0, msg.sender);

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
