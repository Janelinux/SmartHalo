function 0x4c60db9c(uint256 varg0, address varg1) public payable { 

    require(!v0);

    require(msg.data.length - 4 >= 64);

    require(varg1 == varg1);

    if (uint8(STORAGE[keccak256(address(varg1), varg0 + 3)])) {

        STORAGE[keccak256(varg1, varg0 + 3)] = bytes31(STORAGE[keccak256(varg1, varg0 + 3)]);

        STORAGE[keccak256(varg1, varg0 + 1)] = 0;

        require(STORAGE[varg0] >= 1, Panic(17)); // arithmetic overflow or underflow

        require(STORAGE[varg0] - 1 < STORAGE[0 + varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        STORAGE[keccak256(address(STORAGE[STORAGE[varg0] - 1 + keccak256(0 + varg0)]), varg0 + 2)] = STORAGE[keccak256(varg1, varg0 + 2)];

        STORAGE[keccak256(varg1, varg0 + 2)] = 0;

        require(STORAGE[keccak256(varg1, varg0 + 2)] < STORAGE[varg0], Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        STORAGE[keccak256(varg0) + STORAGE[keccak256(varg1, varg0 + 2)]] = address(STORAGE[STORAGE[varg0] - 1 + keccak256(0 + varg0)]) | bytes12(STORAGE[keccak256(varg0) + STORAGE[keccak256(varg1, varg0 + 2)]]);

        require(STORAGE[varg0], Panic(49)); // attemp to .pop an empty array

        STORAGE[~0 + (STORAGE[varg0] + keccak256(varg0))] = bytes12(STORAGE[~0 + (STORAGE[varg0] + keccak256(varg0))]);

        STORAGE[varg0] += ~0;

        goto 0xb70x97;

    }

}
