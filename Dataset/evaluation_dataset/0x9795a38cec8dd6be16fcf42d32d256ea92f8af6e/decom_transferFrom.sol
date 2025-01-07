function transferFrom(address sender, address recipient, uint256 amount) public payable { 

    require(msg.data.length - 4 >= 96);

    require(recipient != address(0x0));

    v0 = _SafeSub(amount, _balanceOf[sender]);

    _balanceOf[sender] = v0;

    v1 = _SafeAdd(amount, _balanceOf[recipient]);

    _balanceOf[recipient] = v1;

    v2 = _SafeSub(amount, _allowance[sender][msg.sender]);

    _allowance[sender][msg.sender] = v2;

    emit Transfer(sender, recipient, amount);

    return True;

}
