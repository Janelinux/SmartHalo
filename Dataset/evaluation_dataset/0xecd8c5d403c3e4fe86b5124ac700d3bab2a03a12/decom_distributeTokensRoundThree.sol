function distributeTokensRoundThree() public nonPayable { 

    require(_getRefund != 2, Error('ReentrancyGuard: reentrant call'));

    _getRefund = 2;

    require(stor_14_0_0, Error('Add Uni Liquidity'));

    require(_isFontDistributedR2, Error('Do Round 2'));

    require(block.timestamp >= _roundThreeUnlockTime, Error('Timelocked'));

    require(!_isFontDistributedR3, Error('Round 3 done'));

    v0 = v1 = 0;

    while (v0 < _contributors.length) {

        assert(v0 < _contributors.length);

        if (_userFontBalance[_contributors[v0]] > 0) {

            assert(v0 < _contributors.length);

            v2 = 0x4a9b(20, _userFontBought[_contributors[v0]]);

            v3 = _SafeDiv(100, v2);

            assert(v0 < _contributors.length);

            require(v3 <= _userFontBalance[_contributors[v0]], Error('SafeMath: subtraction overflow'));

            assert(v0 < _contributors.length);

            _userFontBalance[_contributors[v0]] = _userFontBalance[_contributors[v0]] - v3;

            assert(v0 < _contributors.length);

            require(this.balance >= 0, Error('Address: insufficient balance for call'));

            require(_fONT_ERC20.code.size > 0, Error('Address: call to non-contract'));

            v4 = v5 = MEM[64];

            v6 = v7 = 32 + MEM[64];

            while (v8 >= 32) {

                MEM[v4] = MEM[v6];

                v4 = v4 + 32;

                v6 = v6 + 32;

                v8 = v8 - 32;

            }

            MEM[v4] = MEM[v6] & ~((uint8.max + 1) ** (32 - v8) - 1) | MEM[v4] & (uint8.max + 1) ** (32 - v8) - 1;

            v9, /* uint256 */ v10, /* uint256 */ v11, /* uint256 */ v12 = _fONT_ERC20.transfer(_contributors[v0], v3).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v13 = v14 = 96;

            } else {

                v13 = v15 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v15.data, 0, RETURNDATASIZE());

            }

            if (!v9) {

                require(MEM[v13] <= 0, v12, MEM[v13]);

                v16 = new bytes[](v17.length);

                v18 = v19 = 0;

                while (v18 < v17.length) {

                    v16[v18] = v17[v18];

                    v18 = v18 + 32;

                }

                v20 = v21 = v17.length + v16.data;

                if (0) {

                    MEM[v21 - 0] = uint256(MEM[v21 - 0]);

                }

                revert(Error(v16, v22, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v13] > 0) {

                    require(MEM[v13] >= 32);

                    require(MEM[32 + v13], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                v23 = _SafeAdd(v3, _tokensWithdrawn);

                _tokensWithdrawn = v23;

            }

        }

        v0 += 1;

    }

    _isFontDistributedR3 = 1;

    _getRefund = 1;

}
