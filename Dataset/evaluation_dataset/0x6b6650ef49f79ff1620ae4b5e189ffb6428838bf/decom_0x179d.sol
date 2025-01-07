function 0x179d(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2) != 0, Error('ERC20: transfer from the zero address'));

    require(address(varg1) != 0, Error('ERC20: transfer to the zero address'));

    if (_freezing[msg.sender] != 1) {

        v0 = address(varg1);

        if (_freezing[v0] != 1) {

            v1 = new struct(2);

            v1.word0 = 31;

            v2 = v1.data;

            v1.word1 = 'transfer amount exceeds balance';

            v3 = address(varg2);

            v4 = _SafeSub(v1, varg0, _balanceOf[v3]);

            v5 = address(varg2);

            _balanceOf[v5] = v4;

            v6 = address(varg1);

            v7 = _balanceOf[v6] + varg0;

            require(v7 >= _balanceOf[v6], Error('SafeMath: addition overflow'));

            v8 = address(varg1);

            _balanceOf[v8] = v7;

            emit Transfer(address(varg2), address(varg1), varg0);

        } else {

            emit RejectedPaymentToFreezingedAddr(msg.sender, address(varg1), varg0);

            require(0, Error('recipient are Freezing'));

        }

    } else {

        emit RejectedPaymentFromFreezingedAddr(msg.sender, address(varg1), varg0);

        require(0, Error('You are Freezing'));

    }

    return ;

}
