function nftTransfer(uint256 bitmapIndex, uint256 bit, address token, address from, address to, uint256 tokenId, uint256 expiryBlock) public payable { 

    require(msg.data.length - 4 >= 224);

    require(expiryBlock > block.number, Expired());

    require(bool(bit) & !(bit & bit + ~0), InvalidBit());

    require(0x6c0dc1c455ee100500be45eb5af9d4c93f609d5877e81b7c1f2a01280732dbeb <= ~bitmapIndex, Panic(17)); // arithmetic overflow or underflow

    require(!(STORAGE[0x6c0dc1c455ee100500be45eb5af9d4c93f609d5877e81b7c1f2a01280732dbeb + bitmapIndex] & bit), BitUsed());

    STORAGE[0x6c0dc1c455ee100500be45eb5af9d4c93f609d5877e81b7c1f2a01280732dbeb + bitmapIndex] = bit | STORAGE[0x6c0dc1c455ee100500be45eb5af9d4c93f609d5877e81b7c1f2a01280732dbeb + bitmapIndex];

    MEM[64] = MEM[64] + 132;

    v0 = v1 = MEM[64] + 32;

    v2 = v3 = MEM[64];

    while (v4 >= 32) {

        MEM[v2] = MEM[v0];

        v4 = v4 + ~31;

        v2 += 32;

        v0 += 32;

    }

    MEM[v2] = MEM[v0] & ~(256 ** (32 - v4) - 1) | MEM[v2] & 256 ** (32 - v4) - 1;

    v5 = v6, /* uint256 */ v7, /* uint256 */ v8 = token.transferFrom(from, to, tokenId).gas(msg.gas);

    if (RETURNDATASIZE() == 0) {

        v9 = v10 = 96;

    } else {

        v9 = v11 = new bytes[](RETURNDATASIZE());

        RETURNDATACOPY(v11.data, 0, RETURNDATASIZE());

    }

    if (v6) {

        v5 = !MEM[v9];

        if (MEM[v9]) {

            require(MEM[v9] >= 32);

            v5 = v12 = MEM[v8];

        }

    }

    require(v5, Error('TRANSFER_FROM_FAILED'));

}
