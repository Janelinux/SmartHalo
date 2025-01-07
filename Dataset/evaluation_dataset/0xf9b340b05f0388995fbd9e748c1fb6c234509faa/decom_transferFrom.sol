function transferFrom(address varg0, address varg1, address varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(msg.sender == _owner, Error('access denied'));

    require(varg0.code.size);

    v0, v1 = varg0.allowance(varg1, address(this)).gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(varg0.code.size);

    v2, v3 = varg0.transferFrom(varg1, varg2, v1).gas(msg.gas);

    require(v2); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    return v3;

}
