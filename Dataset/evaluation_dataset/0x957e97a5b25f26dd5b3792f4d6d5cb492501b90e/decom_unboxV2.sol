function unboxV2(uint256 tokenId_) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(bool(_nftCore.code.size));

    v0, /* bool */ v1 = _nftCore.exists(tokenId_).gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v1 == bool(v1));

    require(v1, Error('ChatPuppyNFTManager: token does not exists'));

    require(bool(_nftCore.code.size));

    v2, /* address */ v3 = _nftCore.ownerOf(tokenId_).gas(msg.gas);

    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v3 == address(v3));

    require(address(v3) == msg.sender, Error('ChatPuppyNFTManager: caller is not owner'));

    require(bool(_nftCore.code.size));

    v4, /* uint256 */ v5 = _nftCore.tokenMetaData(tokenId_).gas(msg.gas);

    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    RETURNDATACOPY(v5, 0, RETURNDATASIZE());

    require(v5 + RETURNDATASIZE() - v5 >= 96);

    require(MEM[v5 + 64] <= uint64.max);

    require(v5 + MEM[v5 + 64] + 31 < v5 + RETURNDATASIZE());

    v6 = MEM[v5 + MEM[v5 + 64]];

    require(v6 <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v7 = new bytes[](v6);

    require(!((v7 + (~0x1f & 32 + (~0x1f & v6 + 31) + 31) < v7) | (v7 + (~0x1f & 32 + (~0x1f & v6 + 31) + 31) > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

    require(v5 + MEM[v5 + 64] + v6 + 32 <= v5 + RETURNDATASIZE());

    v8 = v9 = 0;

    while (v8 < v6) {

        v7[v8] = MEM[v8 + (v5 + MEM[v5 + 64] + 32)];

        v8 += 32;

    }

    if (v8 > v6) {

        v7[v6] = 0;

    }

    require(!MEM[v5], Error('ChatPuppyNFTManager: token is already unboxed'));

    MEM[MEM[64] + 192] = tokenId_;

    MEM[MEM[64] + 224] = keccak256(block.timestamp, block.number, msg.sender, tokenId_);

    v10 = new uint256[](224 + (MEM[64] - v10));

    v11 = v10.length;

    v12 = v10.data;

    v13 = v14 = 0;

    v15 = @_expand_5198(_boxTypes.length, keccak256(block.timestamp, block.number, msg.sender, tokenId_));

    require(_boxTypes.length <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

    v16 = new uint256[](_boxTypes.length);

    if (_boxTypes.length) {

        CALLDATACOPY(v16.data, msg.data.length, _boxTypes.length << 5);

    }

    v17 = v18 = 0;

    while (v17 < _boxTypes.length) {

        require(v17 < v15.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(v17 < _boxTypes.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        require(bool(_itemFactory.code.size));

        v19, /* uint256 */ v20 = _itemFactory.getRandomItem(v15[v17], _boxTypes[v17]).gas(msg.gas);

        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v17 < v16.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v16[v17] = v20;

        require(!(bool(8) & (v17 > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow

        v13 = @_addArtifactValue_4568(v20, 8, v17 << 3, v13);

        require(v17 != ~0, Panic(17)); // arithmetic overflow or underflow

        v17 += 1;

    }

    v21 = v22 = 7137;

    require(!(bool(8) & (_boxTypes.length > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow

    v23 = v24 = _boxTypes.length << 3;

    v25 = v26 = 16;

    v27 = v28 = _itemFactory;

    v29 = new uint256[](_boxTypes.length);

    v30 = v31 = v29.data;

    v32 = v33 = _boxTypes.data;

    v34 = v35 = 0;

    while (v34 < _boxTypes.length) {

        MEM[v30] = STORAGE[v32];

        v30 += 32;

        v32 += 1;

        v34 += 1;

    }

    v30 = new uint256[](v16.length);

    v36 = v37 = v30.data;

    v38 = v39 = v16.data;

    v40 = v41 = 0;

    while (v40 < v16.length) {

        MEM[v36] = MEM[v38];

        v36 += 32;

        v38 += 32;

        v40 += 1;

    }

    while (!bool(v27.code.size)) {

        v42, /* uint256 */ v43 = v27.getItemInitialLevel(v29, v30).gas(msg.gas);

        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v44 = @_getBitMask_4516(v25, v23);

        v45 = @_getBitMask_4516(v25, v23);

        v13 = v43 << v23 & v45 | v13 & ~v44;

        // Unknown jump to Block {'0x1be1B0x7d5', '0x1c37B0x7d5'}. Refer to 3-address code (TAC);

        v21 = v46 = 7223;

        require(!(bool(8) & (_boxTypes.length > 0x1fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow

        require(16 <= ~(_boxTypes.length << 3), Panic(17)); // arithmetic overflow or underflow

        v23 = 16 + (_boxTypes.length << 3);

        MEM[MEM[64]] = 0xa6a113a200000000000000000000000000000000000000000000000000000000;

        v25 = v47 = 16;

        v27 = v48 = _itemFactory;

        MEM[4 + MEM[64]] = 64;

        MEM[4 + MEM[64] + 64] = _boxTypes.length;

        v49 = v50 = 4 + MEM[64] + 96;

        v51 = v52 = _boxTypes.data;

        v53 = v54 = 0;

        while (v53 < _boxTypes.length) {

            MEM[v49] = STORAGE[v51];

            v49 += 32;

            v51 += 1;

            v53 += 1;

        }

        MEM[4 + MEM[64] + 32] = v49 - (4 + MEM[64]);

        MEM[v49] = v16.length;

        v36 = v55 = v49 + 32;

        v56 = v57 = v16.data;

        v58 = v59 = 0;

        while (v58 < v16.length) {

            MEM[v36] = MEM[v56];

            v36 += 32;

            v56 += 32;

            v58 += 1;

        }

        _@boxStatus_5078[tokenId_] = keccak256(tokenId_);

        v60 = v61 = v15.data;

        _randomWords[tokenId_].field0.length = v15.length;

        v62 = v63 = _randomWords[tokenId_].field0.data;

        if (v15.length) {

            while (v61 + (v15.length << 5) > v60) {

                STORAGE[v62] = MEM[v60];

                v60 += 32;

                v62 += 1;

            }

        }

        while (v63 + _randomWords[tokenId_].field0.length > v62) {

            STORAGE[v62] = 0;

            v62 += 1;

        }

        require(bool(_nftCore.code.size));

        v64 = _nftCore.updateTokenMetaData(tokenId_, v13, keccak256(v10)).gas(msg.gas);

        require(bool(v64), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        exit;

    }

    revert();

}
