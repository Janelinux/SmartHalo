function 0x1780(uint256 varg0, address varg1, address varg2) private { 

    if (varg2 != _uniWethPool) {

        v0 = v1 = !uint8(_blacklist[address(address(varg1))]);

        if (!bool(_blacklist[address(address(varg1))])) {

            v0 = v2 = !uint8(_blacklist[address(address(varg2))]);

        }

        require(v0, Error('NGU: the transaction was blocked.'));

    }

    v3 = v4 = varg2 == _uniWethPool;

    if (v4) {

        v3 = v5 = !_live;

    }

    if (v3) {

        _blacklist[varg1] = 0x1 | bytes31(_blacklist[address(address(varg1))]);

    }

    v6 = v7 = varg2 != _owner;

    if (varg2 != _owner) {

        v6 = v8 = varg1 != _owner;

    }

    if (v6) {

        v6 = v9 = varg2 != _uniWethPool;

    }

    if (v6) {

        v6 = v10 = _live;

    }

    if (v6) {

        v11 = 0xf76();

        if (v11 < _startPrice) {

            if (_startPrice != 0) {

                v12 = v13 = _startPrice * varg0;

                assert(_startPrice);

                require(v13 / _startPrice == varg0, Error('SafeMath: multiplication overflow'));

            } else {

                v12 = v14 = 0;

            }

            if (v11 > 0) {

                assert(v11);

                v15 = v16 = v12 / v11 < 0x54b40b1f852bda000000;

                if (v12 / v11 >= 0x54b40b1f852bda000000) {

                    v15 = v17 = varg0 < 0x2b5e3af16b18800000;

                }

                require(v15);

            } else {

                v18 = new bytes[](v19.length);

                v20 = v21 = 0;

                while (v20 < v19.length) {

                    v18[v20] = v19[v20];

                    v20 = v20 + 32;

                }

                if (26) {

                    MEM[v18.data] = ~0xffffffffffff & 'SafeMath: division by zero';

                }

                revert(Error(v18));

            }

        }

    }

    require(varg2 != address(0x0), Error('ERC20: transfer from the zero address'));

    require(varg1 != address(0x0), Error('ERC20: transfer to the zero address'));

    v22 = _SafeSub('ERC20: transfer amount exceeds balance', varg0, _balanceOf[varg2]);

    _balanceOf[varg2] = v22;

    if (_balanceOf[varg1] + varg0 >= _balanceOf[varg1]) {

        _balanceOf[varg1] = _balanceOf[varg1] + varg0;

        MEM[MEM[64]] = varg0;

        emit Transfer(varg2, varg1, varg0);

        return ;

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = 32;

        revert(Error('SafeMath: addition overflow'));

    }

}
