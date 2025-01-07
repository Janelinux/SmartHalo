function constructorTransfer(address varg0, uint256 varg1, address varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(varg0 == varg0);

    require(varg2 == varg2);

    require(msg.value >= _feeAmount, Error('Constructor: fee is not enough'));

    v0 = _feeAddress.call().value(_feeAmount).gas(2300 * !_feeAmount);

    require(v0); // checks call status, propagates error data on error

    require(varg0.code.size);

    v1, v2 = varg0.transferFrom(msg.sender, address(this), varg1).gas(msg.gas);

    require(v1); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v2 == v2);

    require(this.code.size);

    v3, v4 = this._balanceOf(varg0).gas(msg.gas);

    require(v3); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(varg0.code.size);

    v5, v6 = varg0.transfer(varg2, v4).gas(msg.gas);

    require(v5); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v6 == v6);

}
