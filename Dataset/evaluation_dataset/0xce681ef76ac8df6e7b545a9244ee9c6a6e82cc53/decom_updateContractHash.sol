function updateContractHash(string varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0x100000000);

    require(4 + varg0 + 32 <= 4 + (msg.data.length - 4));

    v0 = v1 = 36 + varg0;

    require(!((varg0.length > 0x100000000) | (v1 + varg0.length > 4 + (msg.data.length - 4))));

    require(msg.sender == _owner, Error('Ownable: Caller is not the owner'));

    v2 = v3 = v3.data;

    if (_contractHash.length) {

        if (31 < _contractHash.length) {

            v2 = v4 = v3 + _contractHash.length;

            do {

                MEM[v2] = STORAGE[v5];

                v5 += 1;

                v2 += 32;

            } while (v4 <= v2);

        } else {

            MEM[v3] = _contractHash.length >> 8 << 8;

        }

    }

    emit ContractHashUpdated(keccak256(_contractHash.length >> 8 << 8), keccak256(v6.data));

    if (varg0.length) {

        if (31 < varg0.length) {

            _contractHash.length = 1 + (varg0.length + varg0.length);

            if (varg0.length) {

                while (v1 + varg0.length > v0) {

                    STORAGE[v7] = msg.data[v0];

                    v0 += 32;

                    v7 += 1;

                }

            }

        } else {

            _contractHash.length = msg.data[v1] & ~0xff | varg0.length + varg0.length;

        }

    } else {

        _contractHash.length = 0;

    }

    while (v8 + (31 + _contractHash.length >> 5) > v7) {

        STORAGE[v7] = 0;

        v7 += 1;

    }

}
