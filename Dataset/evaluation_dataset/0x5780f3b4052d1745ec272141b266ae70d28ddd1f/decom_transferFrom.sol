function transferFrom(address varg0, address varg1, uint256 varg2) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(varg2 == varg2);

    require(varg0 - address(0x0), Error('ERC20: transfer from the zero address'));

    require(varg1 - address(0x0), Error('ERC20: transfer to the zero address'));

    v0 = v1 = uint8(_execute[address(address(varg0))]);

    if (!v1) {

        v0 = uint8(_execute[address(address(varg1))]);

    }

    if (v0) {

        v2 = v3 = stor_a;

    }

    require(_balanceOf[varg0] >= v2, Error('ERC20: transfer amount exceeds balance'));

    v4 = _SafeSub(_balanceOf[varg0], v2);

    _balanceOf[varg0] = v4;

    v5 = _SafeAdd(_balanceOf[varg1], v2);

    _balanceOf[varg1] = v5;

    emit Transfer(varg0, varg1, v2);

    require(_allowance[varg0][msg.sender] >= varg2, Error('ERC20: transfer amount exceeds allowance'));

    v6 = _SafeSub(_allowance[varg0][msg.sender], varg2);

    0x9c5(v6, msg.sender, varg0);

    return bool(1);

}
