function rescueFunds(address varg0, address varg1, uint256 varg2) public nonPayable { 

    require(msg.data.length - 4 >= 96);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(msg.sender == _owner, OnlyOwner());

    require(varg1);

    if (0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee != varg0) {

        require(bool((address(varg0)).code.size));

        v0, /* bool */ v1 = varg0.transfer(varg1, varg2).gas(msg.gas);

        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v1 == bool(v1));

        goto 0x8e6B0x306;

    } else {

        v2, v3 = varg1.call().value(this.balance).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v4 = new bytes[](RETURNDATASIZE());

            v3 = v4.data;

            RETURNDATACOPY(v3, 0, RETURNDATASIZE());

        }

        require(v2);

    }

}
