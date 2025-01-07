function claim(uint256 index, address account, uint256 amount, bytes32[] merkleProof) public payable { 

    require(msg.data.length - 4 >= 128);

    require(merkleProof <= uint32.max + 1);

    require(merkleProof.data <= 4 + (msg.data.length - 4));

    require(!((merkleProof.length > uint32.max + 1) | (merkleProof.data + (merkleProof.length << 5) > 4 + (msg.data.length - 4))));

    v0 = new uint256[](merkleProof.length);

    CALLDATACOPY(v0.data, merkleProof.data, merkleProof.length << 5);

    v0[merkleProof.length] = 0;

    require(1 << uint8(index) & _claimedBitMap[index >> 8] != 1 << uint8(index), Error('Claimed already'));

    v1 = v2 = keccak256(index, bytes20(account << 96), amount);

    v3 = v4 = 0;

    while (v3 < v0.length) {

        assert(v3 < v0.length);

        if (v1 > v0[v3]) {

            v1 = v5 = keccak256(v0[v3], v1);

        } else {

            v1 = v6 = keccak256(v1, v0[v3]);

        }

        v3 += 1;

    }

    require(_merkleRoot == v1, Error('Wrong proof'));

    _claimedBitMap[index >> 8] = _claimedBitMap[index >> 8] | 1 << uint8(index);

    require(bool(_token.code.size));

    v7, /* uint256 */ v8 = _token.transfer(account, amount).gas(msg.gas);

    require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require(v8, Error('Token transfer failed'));

    emit Claimed(index, account, amount);

}
