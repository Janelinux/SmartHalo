function hasAccess(address varg0, bytes varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg1 <= 0x100000000);

    require(4 + varg1 + 32 <= 4 + (msg.data.length - 4));

    require(!((varg1.length > 0x100000000) | (36 + varg1 + varg1.length > 4 + (msg.data.length - 4))));

    v0 = new bytes[](varg1.length);

    CALLDATACOPY(v0.data, 36 + varg1, varg1.length);

    v0[varg1.length] = 0;

    v1 = v2 = 0x959(v0, varg0);

    if (!v2) {

        v1 = v3 = tx.origin == varg0;

    }

    return v1;

}
