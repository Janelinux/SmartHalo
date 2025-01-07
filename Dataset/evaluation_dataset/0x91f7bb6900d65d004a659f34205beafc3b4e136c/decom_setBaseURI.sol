function setBaseURI(string baseURI) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(baseURI <= uint64.max);

    require(4 + baseURI + 31 < 4 + (msg.data.length - 4));

    require(baseURI.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](baseURI.length);

    require(!((v0 + ((baseURI.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((baseURI.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)

    require(baseURI.data + baseURI.length <= 4 + (msg.data.length - 4));

    CALLDATACOPY(v0.data, baseURI.data, baseURI.length);

    v0[baseURI.length] = 0;

    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));

    require(_hasSaleStarted == False, Error("Can't change metadata after the sale has started"));

    v1 = v2 = v0.data;

    v3 = v4 = _@_baseURI_98.length >> 1;

    if (!(_@_baseURI_98.length & 0x1)) {

        v3 = v5 = v4 & 0x7f;

    }

    require(_@_baseURI_98.length & 0x1 != v3 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v6 = v7 = _@_baseURI_98.data;

    if (v0.length) {

        if (31 < v0.length) {

            _@_baseURI_98.length = 1 + (v0.length + v0.length);

            if (v0.length) {

                while (v2 + v0.length > v1) {

                    STORAGE[v6] = MEM[v1];

                    v1 += 32;

                    v6 += 1;

                }

            }

        } else {

            _@_baseURI_98.length = v0.length + v0.length | bytes31(MEM[v2]);

        }

    } else {

        _@_baseURI_98.length = 0;

    }

    while (v7 + (31 + v3 >> 5) > v6) {

        STORAGE[v6] = 0;

        v6 += 1;

    }

    stor_2013_1_1 = 1;

}
