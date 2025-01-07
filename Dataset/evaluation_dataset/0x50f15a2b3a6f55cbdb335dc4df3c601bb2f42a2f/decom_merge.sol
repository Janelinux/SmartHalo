function merge(uint256 varg0, uint256 varg1, string varg2) public payable { 

    require(msg.data.length - 4 >= 96);

    require(varg2 <= 0xffffffffffffffff);

    require(4 + varg2 + 31 < msg.data.length);

    require(varg2.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg2.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg2.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg2 + varg2.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg2 + 32, varg2.length);

    v0[varg2.length] = 0;

    v1, v2 = 0xd8682bfa6918b0174f287b888e765b9a1b4dc9c3.ownerOf(varg0).gas(msg.gas);

    require(v1); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v2 == address(v2));

    if (address(v2) == msg.sender) {

        v3, v4 = 0xd8682bfa6918b0174f287b888e765b9a1b4dc9c3.ownerOf(varg1).gas(msg.gas);

        require(v3); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v4 == address(v4));

        if (address(v4) == msg.sender) {

            require(0xd8682bfa6918b0174f287b888e765b9a1b4dc9c3.code.size);

            v5 = 0xd8682bfa6918b0174f287b888e765b9a1b4dc9c3.transferFrom(msg.sender, 57005, varg0).gas(msg.gas);

            require(v5); // checks call status, propagates error data on error

            v6 = new array[](v0.length);

            v7 = v8 = 0;

            while (v7 < v0.length) {

                v6[v7] = v0[v7];

                v7 += 32;

            }

            if (v7 > v0.length) {

                v6[v0.length] = 0;

            }

            emit Merge(msg.sender, varg0, varg1, v6, v0.length, varg0);

            exit;

        }

    }

    revert(Error('not owner of _to token'));

}
