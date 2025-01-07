function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    MEM[64] = MEM[64] + 160;

    v0 = v1 = MEM[64] + 160 - 32;

    MEM[v1] = 0;

    do {

        v0 = v0 - 1;

        MEM8[v0] = 48 + v2 % 10 & 0xFF;

        v2 = v2 / 10;

    } while (!v2);

    MEM[v0 + ~31] = v1 - v0;

    MEM[32 + MEM[64]] = 'ipfs://bafybeiag65i5lx2kjb5bpsoj';

    MEM[32 + MEM[64] + 32] = '5fbb6pcdrphtt4zrymrkudbidkons2fl';

    MEM[32 + MEM[64] + 64] = 0x72342f0000000000000000000000000000000000000000000000000000000000;

    v3 = v4 = 0;

    while (v3 < MEM[v0 + ~31]) {

        MEM[v3 + (32 + MEM[64] + 67)] = MEM[v3 + (v0 + ~31 + 32)];

        v3 += 32;

    }

    MEM[MEM[v0 + ~31] + (32 + MEM[64] + 67)] = 0;

    MEM[MEM[v0 + ~31] + (32 + MEM[64]) + 67] = '.json';

    v5 = new array[](72 + (MEM[v0 + ~31] + (32 + MEM[64])) - MEM[64] - 32);

    v6 = v7 = 0;

    while (v6 < 72 + (MEM[v0 + ~31] + (32 + MEM[64])) - MEM[64] - 32) {

        v5[v6] = MEM[v6 + (MEM[64] + 32)];

        v6 += 32;

    }

    v5[72 + (MEM[v0 + ~31] + (32 + MEM[64])) - MEM[64] - 32] = 0;

    return v5;

}
