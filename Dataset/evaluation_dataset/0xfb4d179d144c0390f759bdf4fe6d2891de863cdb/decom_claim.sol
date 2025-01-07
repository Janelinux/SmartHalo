function claim(uint256 varg0, address varg1, uint256 varg2, bytes32[] varg3, uint256 varg4) public payable { 

    require(msg.data.length - 4 >= 160);

    require(varg3 <= 0x100000000);

    require(4 + varg3 + 32 <= 4 + (msg.data.length - 4));

    require(!((varg3.length > 0x100000000) | (36 + varg3 + (varg3.length << 5) > 4 + (msg.data.length - 4))));

    require(varg4 <= 10000);

    require(1 << (varg0 & 0xff) & _isClaimed[varg0 >> 8] != 1 << (varg0 & 0xff), Error('MerkleDistributor: Drop already claimed.'));

    v0 = v1 = keccak256(varg0, varg1 << 96 & ~0xffffffffffffffffffffffff, varg2);

    CALLDATACOPY(MEM[64] + 148, 36 + varg3, varg3.length << 5);

    MEM[MEM[64] + 148 + (varg3.length << 5)] = 0;

    v2 = v3 = 0;

    while (v2 < varg3.length) {

        assert(v2 < varg3.length);

        if (v0 > MEM[32 + (v2 << 5) + (MEM[64] + 116)]) {

            v0 = v4 = keccak256(MEM[32 + (v2 << 5) + (MEM[64] + 116)], v0);

        } else {

            v0 = v5 = keccak256(v0, MEM[32 + (v2 << 5) + (MEM[64] + 116)]);

        }

        v2 += 1;

    }

    require(0xe0c22845962d3a30f85ab8c82e4a9dd9dab8d687d8d47a0a8bc0385f8e0454fc == v0, Error('MerkleDistributor: Invalid proof.'));

    _isClaimed[varg0 >> 8] = _isClaimed[varg0 >> 8] | 1 << (varg0 & 0xff);

    if (msg.sender == varg1) {

        v6 = v7 = varg4 * varg2 / 10000;

    } else {

        v6 = v8 = 0;

    }

    require(0x6b175474e89094c44da98b954eedeac495271d0f.code.size);

    v9, v10 = 0x6b175474e89094c44da98b954eedeac495271d0f.transfer(varg1, varg2 - v6).gas(msg.gas);

    require(v9); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v10, Error('MerkleDistributor: Transfer failed.'));

    if (v6) {

        require(0x6b175474e89094c44da98b954eedeac495271d0f.code.size);

        v11, v12 = 0x6b175474e89094c44da98b954eedeac495271d0f.transfer(_claim, v6).gas(msg.gas);

        require(v11); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        require(v12);

    }

    emit Claimed(varg0, varg1, varg2);

}
