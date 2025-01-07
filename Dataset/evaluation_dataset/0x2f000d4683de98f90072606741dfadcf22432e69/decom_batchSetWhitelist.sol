function batchSetWhitelist(address[] varg0, bool[] varg1) public nonPayable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    v0 = 0x11fc(varg0.length);

    require(!((MEM[64] + (~0x1f & v0 + 31) < MEM[64]) | (MEM[64] + (~0x1f & v0 + 31) > 0xffffffffffffffff)), Panic(65));

    v1 = v2 = MEM[64] + 32;

    v3 = v4 = 4 + varg0 + 32;

    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);

    v5 = v6 = 0;

    while (v5 < varg0.length) {

        require(msg.data[v3] == address(msg.data[v3]));

        MEM[v1] = msg.data[v3];

        v5 += 1;

        v1 += 32;

        v3 += 32;

    }

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    v7 = 0x11fc(varg1.length);

    require(!((MEM[64] + (~0x1f & v7 + 31) < MEM[64]) | (MEM[64] + (~0x1f & v7 + 31) > 0xffffffffffffffff)), Panic(65));

    v8 = v9 = MEM[64] + 32;

    v10 = v11 = 4 + varg1 + 32;

    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);

    v12 = v13 = 0;

    while (v12 < varg1.length) {

        require(msg.data[v10] == msg.data[v10]);

        MEM[v8] = msg.data[v10];

        v8 += 32;

        v10 += 32;

        v12 += 1;

    }

    v14 = v15 = 0xff & _isAdmin[msg.sender];

    if (!v15) {

        v14 = msg.sender == _owner;

    }

    require(v14, Error('Caller does not have Admin/Owner access'));

    require(varg0.length == varg1.length, Error('Length not equal'));

    v16 = v17 = 0;

    while (v16 < varg0.length) {

        if (v16 < varg0.length) {

            break;

        }

        require(v16 < varg0.length, Panic(50));

        if (v16 < varg1.length) {

            break;

        }

        require(v16 < varg1.length, Panic(50));

        v18 = 0xff & _isAdmin[msg.sender];

        if (!v18) {

            v18 = v19 = msg.sender == _owner;

        }

        require(v18, Error('Caller does not have Admin/Owner access'));

        _isWhitelisted[address(MEM[32 + (v16 << 5) + MEM[64]])] = MEM[32 + (v16 << 5) + MEM[64]] | ~0xff & _isWhitelisted[address(MEM[32 + (v16 << 5) + MEM[64]])];

        require(v16 != ~0, Panic(17));

        v16 += 1;

    }

}
