function checker() public payable { 

    require(block.timestamp >= stor_1, Panic(17)); // arithmetic overflow or underflow

    if (block.timestamp - stor_1 > _interval) {

        stor_1 = block.timestamp;

    }

    v0 = new uint256[](4);

    v1 = v2 = 0;

    while (v1 < 4) {

        MEM[v0.data + v1] = MEM[MEM[64] + 32 + v1];

        v1 = v1 + 32;

    }

    if (v1 > 4) {

        MEM[v0.data + 4] = 0;

    }

    return block.timestamp - stor_1 > _interval, v0, v3, 0x14d6aed0;

}
