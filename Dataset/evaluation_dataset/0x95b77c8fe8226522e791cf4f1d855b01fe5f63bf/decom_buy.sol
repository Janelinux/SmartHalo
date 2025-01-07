function buy(uint8 artId, string metadataCid) public payable { 

    require(4 + (msg.data.length - 4) - 4 >= 64);

    require(metadataCid <= uint64.max);

    require(4 + metadataCid + 31 < 4 + (msg.data.length - 4));

    require(metadataCid.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v0 = new bytes[](metadataCid.length);

    require(!((v0 + ((metadataCid.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) > uint64.max) | (v0 + ((metadataCid.length + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) + 32 + 31 & 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0) < v0)), Panic(65)); // failed memory allocation (too much memory)

    require(metadataCid.data + metadataCid.length <= 4 + (msg.data.length - 4));

    CALLDATACOPY(v0.data, metadataCid.data, metadataCid.length);

    v0[metadataCid.length] = 0;

    require(artId < 4, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

    require(uint8(STORAGE[(artId << 1) + 10]) >= uint8(1), Panic(17)); // arithmetic overflow or underflow

    STORAGE[(artId << 1) + 10] = uint8(uint8(STORAGE[(artId << 1) + 10]) - uint8(1)) | bytes31(STORAGE[(artId << 1) + 10]);

    require(msg.value == STORAGE[1 + ((artId << 1) + 10)], Error('Sent ether is invalid.'));

    require(!(bool(artId) & (uint8(10) > uint8.max / artId)), Panic(17)); // arithmetic overflow or underflow

    require(!(bool(STORAGE[1 + ((artId << 1) + 10)]) & (1000 > uint256.max / STORAGE[1 + ((artId << 1) + 10)])), Panic(17)); // arithmetic overflow or underflow

    v1 = _SafeSub(STORAGE[1 + ((artId << 1) + 10)] * 1000, 0x1a055690d9db80000);

    v2 = _SafeDiv(v1, 10 ** 18);

    v3 = _SafeAdd(v2, uint8(artId * uint8(10)));

    v4 = _SafeAdd(STORAGE[1 + ((artId << 1) + 10)], 10 ** 15);

    STORAGE[1 + ((artId << 1) + 10)] = v4;

    v5 = v6 = v0.data;

    v7 = 0x352a(map_13[v3].length);

    v8 = v9 = map_13[v3].data;

    if (v0.length) {

        if (31 < v0.length) {

            map_13[v3].length = 1 + (v0.length + v0.length);

            if (v0.length) {

                while (v6 + v0.length > v5) {

                    STORAGE[v8] = MEM[v5];

                    v5 += 32;

                    v8 += 1;

                }

            }

        } else {

            map_13[v3].length = v0.length + v0.length | bytes31(MEM[v6]);

        }

    } else {

        map_13[v3].length = 0;

    }

    while (v9 + (31 + v7 >> 5) > v8) {

        STORAGE[v8] = 0;

        v8 += 1;

    }

    require(msg.sender != address(0x0), Error('ERC721: mint to the zero address'));

    require(map_2[v3] == address(0x0), Error('ERC721: token already minted'));

    v10 = _SafeAdd(_balanceOf[msg.sender], 1);

    _balanceOf[msg.sender] = v10;

    map_2[v3] = msg.sender;

    emit Transfer(address(0x0), msg.sender, v3);

    emit BuyArt(artId, v3, msg.sender);

}
