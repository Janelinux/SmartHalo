function 0x781(uint256 varg0, uint256 varg1) private { 

    v0 = address(varg1);

    require(v0.code.size);

    v1, v2 = v0.allowance(_recipient, 0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf).gas(msg.gas);

    require(v1); // checks call status, propagates error data on error

    MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    0x10a3(v2);

    if (varg0 > v2) {

        0x9b1(0x40ec5b33f54e0e8a33a975908c5ba1c14e5bbbdf, varg1);

    }

    v3 = new array[](32);

    v4 = address(varg1);

    v5 = v6 = 0;

    while (v5 < 32) {

        v3[v5] = MEM[MEM[64] + 32 + v5];

        v5 = v5 + 32;

    }

    if (v5 > 32) {

        v3[32] = 0;

    }

    require(0xa0c68c638235ee32657e8f720a23cec1bfc77c77.code.size);

    v7 = 0xa0c68c638235ee32657e8f720a23cec1bfc77c77.depositFor(_recipient, v4, v3, v8, varg0).gas(msg.gas);

    require(v7); // checks call status, propagates error data on error

    emit Relay(_recipient, address(varg1), varg0);

    return ;

}
