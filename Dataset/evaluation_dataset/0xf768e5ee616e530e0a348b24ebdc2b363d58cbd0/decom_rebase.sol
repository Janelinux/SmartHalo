function rebase(uint256 varg0, uint256 varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(__owner == msg.sender, Error('Ownable: caller is not the owner'));

    if (varg1 != 0) {

        v0 = _SafeSub(varg1, _totalSupply);

        _totalSupply = v0;

        if (_totalSupply > 0xffffffffffffffffffffffffffffffff) {

            _totalSupply = 0xffffffffffffffffffffffffffffffff;

        }

        if (_totalSupply > 0) {

            assert(_totalSupply);

            _balanceOf = 0xfffffffffffffffffffffffffffffffffffffffffffffffff7e52fe5afe40000 / _totalSupply;

            emit LogRebase(varg0, _totalSupply);

            v1 = v2 = _totalSupply;

        } else {

            v3 = new array[](v4.length);

            v5 = v6 = 0;

            while (v5 < v4.length) {

                v3[v5] = v4[v5];

                v5 = v5 + 32;

            }

            if (26) {

                MEM[v3.data] = ~0x2c605e6b6297a286cd48 & 'SafeMath: division by zero';

            }

            revert(Error(v3));

        }

    } else {

        emit LogRebase(varg0, _totalSupply);

        v1 = v7 = _totalSupply;

    }

    return v1;

}
