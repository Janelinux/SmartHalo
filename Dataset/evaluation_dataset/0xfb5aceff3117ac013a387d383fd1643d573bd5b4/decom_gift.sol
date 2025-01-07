function gift(address[] varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);

    require(0xff & _canGift[msg.sender], Error('you are not allowed to gift'));

    require(varg0.length, Error('no recipients'));

    v0 = v1 = 0;

    while (v0 < varg0.length) {

        if (_numRemainingTotal < 1111) {

            break;

        }

        require(_numRemainingTotal < 1111, Error('no more to gift'));

        if (v0 < varg0.length) {

            break;

        }

        require(v0 < varg0.length, Panic(50));

        if ((v0 << 5) + (4 + varg0 + 32) + 32 - ((v0 << 5) + (4 + varg0 + 32)) >= 32) {

            break;

        }

        require((v0 << 5) + (4 + varg0 + 32) + 32 - ((v0 << 5) + (4 + varg0 + 32)) >= 32);

        if (varg0[v0 << 5] == address(varg0[v0 << 5])) {

            break;

        }

        require(varg0[v0 << 5] == address(varg0[v0 << 5]));

        v2 = _SafeSub(1111, _numRemainingTotal);

        if (v2 == _metadataIDs.length) {

            break;

        }

        require(v2 == _metadataIDs.length, Error('remaining tokens must equal number of available IDs'));

        if (v2 > 0) {

            break;

        }

        require(v2 > 0, Error('no more tokens to mint'));

        v3 = _SafeSub(block.number, 1);

        v4 = _SafeMod(block.blockhash(v3), v2);

        require(v4 < _metadataIDs.length, Panic(50));

        require(v4 < _metadataIDs.length, Error('index out of range'));

        v5 = _SafeSub(_metadataIDs.length, 1);

        require(v5 < _metadataIDs.length, Panic(50));

        require(v4 < _metadataIDs.length, Panic(50));

        _metadataIDs[v4 >> 4] = uint16(_metadataIDs[v5 >> 4] / 256 ** (v5 % 16 << 1)) * 256 ** (v4 % 16 << 1) | ~(0xffff * 256 ** (v4 % 16 << 1)) & _metadataIDs[v4 >> 4];

        require(_metadataIDs.length, Panic(49));

        _metadataIDs[_metadataIDs.length + ~0 >> 4] = ~(256 ** ((_metadataIDs.length + ~0 & 0xf) << 1) * 0xffff) & _metadataIDs[_metadataIDs.length + ~0 >> 4];

        _metadataIDs.length = _metadataIDs.length + ~0;

        _tokenIDToMetadataID[_numRemainingTotal] = uint16(_metadataIDs[v4 >> 4] / 256 ** ((v4 & 0xf) << 1));

        _numRemainingTotal += 1;

        0x1985(_numRemainingTotal, varg0[v0 << 5]);

        v0 = 0x236f(v0);

    }

}
