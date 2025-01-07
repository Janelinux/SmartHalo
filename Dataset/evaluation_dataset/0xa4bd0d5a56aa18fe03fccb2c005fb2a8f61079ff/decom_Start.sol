function Start(string varg0, string varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    v0 = v1 = 4 + varg0 + 32;

    require(4 + varg0 + varg0.length + 32 <= msg.data.length);

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= 0xffffffffffffffff);

    require(4 + varg1 + varg1.length + 32 <= msg.data.length);

    require(0xff & _stop[keccak256(~0xffffffffffffffffffffffff & msg.sender << 96)]);

    if (!_try) {

        v2 = new array[]((~0x1f & varg1.length + 31) + v2.data + 64 - MEM[64] + ~31);

        MEM[v2.data] = 32;

        v2[32] = varg1.length;

        CALLDATACOPY(v2.data + 64, 4 + varg1 + 32, varg1.length);

        MEM[64 + (varg1.length + v2.data)] = 0;

        v3 = v4.length;

        v5 = v2.data;

        _try = keccak256(v2);

        v6 = 0x606(_question.length);

        if (varg0.length) {

            if (31 < varg0.length) {

                _question.length = 1 + (varg0.length + varg0.length);

                if (varg0.length) {

                    while (v1 + varg0.length > v0) {

                        STORAGE[v7] = msg.data[v0];

                        v0 += 32;

                        v7 += 1;

                    }

                }

            } else {

                _question.length = msg.data[v1] & ~0xff | varg0.length + varg0.length;

            }

        } else {

            _question.length = 0;

        }

        while (v8 + (31 + v6 >> 5) > v7) {

            STORAGE[v7] = 0;

            v7 += 1;

        }

    }

}
