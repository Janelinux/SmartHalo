function buyNFT(address recipient, uint256 tier) public payable { 

    require(msg.data.length - 4 >= 64);

    require(_withdrawSale - 2, Error('ReentrancyGuard: reentrant call'));

    _withdrawSale = 2;

    require(msg.sender - address(_nftContractSale[address(recipient)][tier].field0), Error('Seller cannot buy own NFT'));

    v0 = v1 = _nftContractSale[recipient][tier].field2;

    v2, /* uint16 */ v3 = _dataStorage.platformCommission().gas(msg.gas);

    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v3 == uint16(v3));

    require(!(bool(v1) & (uint16(v3) > ~0 / v1)), Panic(17)); // arithmetic overflow or underflow

    require(10000, Panic(18)); // division by zero

    require(v1 <= ~(v1 * uint16(v3) / 10000), Panic(17)); // arithmetic overflow or underflow

    if (!address(_nftContractSale[address(recipient)][tier].field1)) {

        require(msg.value >= v1 + v1 * uint16(v3) / 10000, Error('Must be greater than NFT cost'));

        v4 = _nftContractSale[recipient][tier].field2;

        v5, /* uint16 */ v6 = _dataStorage.platformCommission().gas(msg.gas);

        require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v6 == uint16(v6));

        require(!(bool(v4) & (uint16(v6) > ~0 / v4)), Panic(17)); // arithmetic overflow or underflow

        require(10000, Panic(18)); // division by zero

        require(msg.value >= v4 * uint16(v6) / 10000, Panic(17)); // arithmetic overflow or underflow

        v7 = v8 = msg.value - v4 * uint16(v6) / 10000;

        v9 = v10 = MEM[64];

        MEM[64] = 96 + v10;

        v11 = v12 = 3;

        do {

            MEM[MEM[64]] = 0;

            MEM[MEM[64] + 32] = 0;

            MEM[v9] = MEM[64];

            v9 += 32;

            v11 = v11 - 1;

        } while (!v11);

        v13 = _dataStorage.getSellerCommission(address(_nftContractSale[address(recipient)][tier].field0)).gas(msg.gas);

        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v14 = v15 = MEM[64];

        require(v15 + RETURNDATASIZE() - v15 >= 192);

        require(v15 + 31 < v15 + RETURNDATASIZE());

        v16 = v17 = MEM[64];

        require(!((v17 + 96 < v17) | (v17 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

        MEM[64] = v17 + 96;

        require(v15 + 192 <= v15 + RETURNDATASIZE());

        while (v14 < v15 + 192) {

            require(v15 + RETURNDATASIZE() - v14 >= 64);

            require(!((MEM[64] + 64 < MEM[64]) | (MEM[64] + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

            MEM[64] = MEM[64] + 64;

            require(MEM[v14] == uint16(MEM[v14]));

            MEM[MEM[64]] = MEM[v14];

            require(MEM[v14 + 32] == address(MEM[v14 + 32]));

            MEM[32 + MEM[64]] = MEM[v14 + 32];

            MEM[v16] = MEM[64];

            v16 += 32;

            v14 += 64;

        }

        v18 = v19 = 0;

        while (uint8(v18) < 3) {

            require(uint8(v18) < 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            if (uint16(MEM[MEM[(uint8(v18) << 5) + v17]]) > 0) {

                require(uint8(v18) < 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(!(bool(v4) & (uint16(MEM[MEM[(uint8(v18) << 5) + v17]]) > ~0 / v4)), Panic(17)); // arithmetic overflow or underflow

                require(10000, Panic(18)); // division by zero

                require(v7 >= v4 * uint16(MEM[MEM[(uint8(v18) << 5) + v17]]) / 10000, Panic(17)); // arithmetic overflow or underflow

                v7 = v7 - v4 * uint16(MEM[MEM[(uint8(v18) << 5) + v17]]) / 10000;

                require(uint8(v18) < 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v20, /* uint256 */ v21 = address(MEM[32 + MEM[(uint8(v18) << 5) + v17]]).call().value(v4 * uint16(MEM[MEM[(uint8(v18) << 5) + v17]]) / 10000).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    v22 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v22.data, 0, RETURNDATASIZE());

                }

                require(v20, Error('TRANSFER_FAILED'));

            }

            require(uint8(v18) - uint8.max, Panic(17)); // arithmetic overflow or underflow

            v18 = 1 + uint8(v18);

        }

        v23, /* uint16 */ v24 = _dataStorage.nftCommission().gas(msg.gas);

        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v24 == uint16(v24));

        require(!(bool(v4) & (uint16(v24) > ~0 / v4)), Panic(17)); // arithmetic overflow or underflow

        require(10000, Panic(18)); // division by zero

        require(v7 >= v4 * uint16(v24) / 10000, Panic(17)); // arithmetic overflow or underflow

        v25 = v26 = v7 - v4 * uint16(v24) / 10000;

        _nftContractSale[recipient][tier].field0 = bytes12(_nftContractSale[address(recipient)][tier].field0);

        _nftContractSale[recipient][tier].field1 = bytes12(_nftContractSale[address(recipient)][tier].field1);

        _nftContractSale[recipient][tier].field2 = 0;

        v27, /* bool */ v28 = _dataStorage.isActivated(recipient, tier).gas(msg.gas);

        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v28 == bool(v28));

        if (!v28) {

            require(bool(_dataStorage.code.size));

            v29 = _dataStorage.activateRoyalty(recipient, tier).gas(msg.gas);

            require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        } else {

            v30, /* address */ v31 = _dataStorage.getRoyaltyOwner(recipient, tier).gas(msg.gas);

            require(bool(v30), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v31 == address(v31));

            v32, /* uint256 */ v33 = _dataStorage.getRoyaltyPercentage(recipient, tier).gas(msg.gas);

            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(!(bool(v4) & (v33 > ~0 / v4)), Panic(17)); // arithmetic overflow or underflow

            require(10000, Panic(18)); // division by zero

            require(v26 >= v4 * v33 / 10000, Panic(17)); // arithmetic overflow or underflow

            v25 = v26 - v4 * v33 / 10000;

            v34, /* uint256 */ v35 = address(v31).call().value(v4 * v33 / 10000).gas(msg.gas);

            if (RETURNDATASIZE() != 0) {

                v36 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v36.data, 0, RETURNDATASIZE());

            }

            require(v34);

        }

        require(v4 * uint16(v6) / 10000 <= ~(v4 * uint16(v24) / 10000), Panic(17)); // arithmetic overflow or underflow

        v37 = _owner.call().value(v4 * uint16(v6) / 10000 + v4 * uint16(v24) / 10000).gas(2300 * !(v4 * uint16(v6) / 10000 + v4 * uint16(v24) / 10000));

        require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v38, /* uint256 */ v39 = address(_nftContractSale[address(recipient)][tier].field0).call().value(v25).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v40 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v40.data, 0, RETURNDATASIZE());

        }

        require(v38);

        require(bool((address(recipient)).code.size));

        v41 = recipient.safeTransferFrom(address(this), msg.sender, tier).gas(msg.gas);

        require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    } else {

        v42, /* uint16 */ v43 = _dataStorage.platformCommission().gas(msg.gas);

        require(bool(v42), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v43 == uint16(v43));

        require(!(bool(v1) & (uint16(v43) > ~0 / v1)), Panic(17)); // arithmetic overflow or underflow

        require(10000, Panic(18)); // division by zero

        v44 = v45 = MEM[64];

        MEM[64] = 96 + v45;

        v46 = v47 = 3;

        do {

            MEM[MEM[64]] = 0;

            MEM[MEM[64] + 32] = 0;

            MEM[v44] = MEM[64];

            v44 += 32;

            v46 = v46 - 1;

        } while (!v46);

        v48 = _dataStorage.getSellerCommission(address(_nftContractSale[address(recipient)][tier].field0)).gas(msg.gas);

        require(bool(v48), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v49 = v50 = MEM[64];

        require(v50 + RETURNDATASIZE() - v50 >= 192);

        require(v50 + 31 < v50 + RETURNDATASIZE());

        v51 = v52 = MEM[64];

        require(!((v52 + 96 < v52) | (v52 + 96 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

        MEM[64] = v52 + 96;

        require(v50 + 192 <= v50 + RETURNDATASIZE());

        while (v49 < v50 + 192) {

            require(v50 + RETURNDATASIZE() - v49 >= 64);

            require(!((MEM[64] + 64 < MEM[64]) | (MEM[64] + 64 > uint64.max)), Panic(65)); // failed memory allocation (too much memory)

            MEM[64] = MEM[64] + 64;

            require(MEM[v49] == uint16(MEM[v49]));

            MEM[MEM[64]] = MEM[v49];

            require(MEM[v49 + 32] == address(MEM[v49 + 32]));

            MEM[32 + MEM[64]] = MEM[v49 + 32];

            MEM[v51] = MEM[64];

            v51 += 32;

            v49 += 64;

        }

        v53 = v54 = 0;

        while (uint8(v53) < 3) {

            require(uint8(v53) < 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            if (uint16(MEM[MEM[(uint8(v53) << 5) + v52]]) > 0) {

                require(uint8(v53) < 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(!(bool(v1) & (uint16(MEM[MEM[(uint8(v53) << 5) + v52]]) > ~0 / v1)), Panic(17)); // arithmetic overflow or underflow

                require(10000, Panic(18)); // division by zero

                require(v0 >= v1 * uint16(MEM[MEM[(uint8(v53) << 5) + v52]]) / 10000, Panic(17)); // arithmetic overflow or underflow

                v0 = v0 - v1 * uint16(MEM[MEM[(uint8(v53) << 5) + v52]]) / 10000;

                require(uint8(v53) < 3, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v55, /* bool */ v56 = address(_nftContractSale[address(recipient)][tier].field1).transferFrom(msg.sender, address(MEM[32 + MEM[(uint8(v53) << 5) + v52]]), v1 * uint16(MEM[MEM[(uint8(v53) << 5) + v52]]) / 10000).gas(msg.gas);

                require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

                require(v56 == bool(v56));

            }

            require(uint8(v53) - uint8.max, Panic(17)); // arithmetic overflow or underflow

            v53 = 1 + uint8(v53);

        }

        v57, /* uint16 */ v58 = _dataStorage.nftCommission().gas(msg.gas);

        require(bool(v57), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v58 == uint16(v58));

        require(!(bool(v1) & (uint16(v58) > ~0 / v1)), Panic(17)); // arithmetic overflow or underflow

        require(10000, Panic(18)); // division by zero

        _nftContractSale[recipient][tier].field0 = bytes12(_nftContractSale[address(recipient)][tier].field0);

        _nftContractSale[recipient][tier].field1 = bytes12(_nftContractSale[address(recipient)][tier].field1);

        _nftContractSale[recipient][tier].field2 = 0;

        v59, /* bool */ v60 = _dataStorage.isActivated(recipient, tier).gas(msg.gas);

        require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v60 == bool(v60));

        if (!v60) {

            require(bool(_dataStorage.code.size));

            v61 = _dataStorage.activateRoyalty(recipient, tier).gas(msg.gas);

            require(bool(v61), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        } else {

            v62, /* address */ v63 = _dataStorage.getRoyaltyOwner(recipient, tier).gas(msg.gas);

            require(bool(v62), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v63 == address(v63));

            v64, /* uint256 */ v65 = _dataStorage.getRoyaltyPercentage(recipient, tier).gas(msg.gas);

            require(bool(v64), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(!(bool(v1) & (v65 > ~0 / v1)), Panic(17)); // arithmetic overflow or underflow

            require(10000, Panic(18)); // division by zero

            require(v0 >= v1 * v65 / 10000, Panic(17)); // arithmetic overflow or underflow

            v0 = v0 - v1 * v65 / 10000;

            v66, /* bool */ v67 = address(_nftContractSale[address(recipient)][tier].field1).transferFrom(msg.sender, address(v63), v1 * v65 / 10000).gas(msg.gas);

            require(bool(v66), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v67 == bool(v67));

        }

        require(v0 >= v1 * uint16(v58) / 10000, Panic(17)); // arithmetic overflow or underflow

        require(v1 * uint16(v43) / 10000 <= ~(v1 * uint16(v58) / 10000), Panic(17)); // arithmetic overflow or underflow

        v68, /* bool */ v69 = address(_nftContractSale[address(recipient)][tier].field1).transferFrom(msg.sender, _owner, v1 * uint16(v43) / 10000 + v1 * uint16(v58) / 10000).gas(msg.gas);

        require(bool(v68), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v69 == bool(v69));

        v70, /* bool */ v71 = address(_nftContractSale[address(recipient)][tier].field1).transferFrom(msg.sender, address(_nftContractSale[address(recipient)][tier].field0), v0 - v1 * uint16(v58) / 10000).gas(msg.gas);

        require(bool(v70), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v71 == bool(v71));

        require(bool((address(recipient)).code.size));

        v72 = recipient.safeTransferFrom(address(this), msg.sender, tier).gas(msg.gas);

        require(bool(v72), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    }

    _withdrawSale = 1;

}
