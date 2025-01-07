function mint(uint256[] varg0, address[] varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    v0 = 0x1f82(varg0.length);

    require(!((MEM[64] + (~0x1f & v0 + 31) < MEM[64]) | (MEM[64] + (~0x1f & v0 + 31) > 0xffffffffffffffff)), Panic(65));

    v1 = v2 = MEM[64] + 32;

    v3 = v4 = 4 + varg0 + 32;

    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);

    v5 = v6 = 0;

    while (v5 < varg0.length) {

        MEM[v1] = msg.data[v3];

        v5 += 1;

        v1 += 32;

        v3 += 32;

    }

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    v7 = 0x1f82(varg1.length);

    require(!((MEM[64] + (~0x1f & v7 + 31) < MEM[64]) | (MEM[64] + (~0x1f & v7 + 31) > 0xffffffffffffffff)), Panic(65));

    v8 = v9 = MEM[64] + 32;

    v10 = v11 = 4 + varg1 + 32;

    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);

    v12 = v13 = 0;

    while (v12 < varg1.length) {

        require(msg.data[v10] == address(msg.data[v10]));

        MEM[v8] = msg.data[v10];

        v8 += 32;

        v10 += 32;

        v12 += 1;

    }

    require(0xff & _mintStatus, Error('Public Mint has not started'));

    if (varg1.length > 1) {

        require(_setApprovalForAll.code.size);

        v14, v15 = _setApprovalForAll.call(0x8f82b95000000000000000000000000000000000000000000000000000000000, msg.sender, 3).gas(msg.gas);

        require(v14); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v15 == v15);

        require(v15, Error('Public Mint has not started'));

    } else {

        require(_setApprovalForAll.code.size);

        v16, v17 = _setApprovalForAll.call(0x8f82b95000000000000000000000000000000000000000000000000000000000, msg.sender, 2).gas(msg.gas);

        require(v16); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v17 == v17);

        if (!v17) {

            require(0 < varg0.length, Panic(50));

            require(!(_mINT_PRICE & (MEM[32 + MEM[64]] > ~0 / _mINT_PRICE)), Panic(17));

            require(msg.value == _mINT_PRICE * MEM[32 + MEM[64]], Error('Invalid Ether amount sent'));

        }

        if (0xff & _mintStatus >> 8) {

            require(0 < varg0.length, Panic(50));

            v18 = _SafeDiv(MEM[32 + MEM[64]], 5);

            require(0 < varg0.length, Panic(50));

            v19 = _SafeAdd(MEM[32 + MEM[64]], v18);

            MEM[32 + MEM[64]] = v19;

        }

    }

    v20 = v21 = 0;

    while (v20 < varg1.length) {

        if (varg1.length <= 1) {

            v22 = v23 = 4336;

            require(0 < varg0.length, Panic(50));

            v24 = v25 = MEM[32 + MEM[64]];

            require(v20 < varg1.length, Panic(50));

            v26 = v27 = MEM[32 + (v20 << 5) + MEM[64]];

            v28 = v29 = msg.sender;

        } else {

            v22 = v30 = 4251;

            require(v20 < varg0.length, Panic(50));

            v24 = v31 = MEM[32 + (v20 << 5) + MEM[64]];

            require(v20 < varg1.length, Panic(50));

            v26 = v32 = MEM[32 + (v20 << 5) + MEM[64]];

            v28 = v33 = 0;

        }

        if (!address(v28)) {

            emit Transfer(address(v28), address(v26), v24);

            goto {'0x109bB0x4fd', '0x10f0B0x4fd'};

        } else {

            v34 = v35 = 0;

            while (v34 < v24) {

                v36 = _SafeAdd(stor_0, 1);

                stor_0 = v36;

                v37 = new struct(1);

                v37.word0 = 0;

                if (address(v26)) {

                    break;

                }

                require(address(v26), Error('ERC721: mint to the zero address'));

                if (!address(_tokenURI[stor_0])) {

                    break;

                }

                require(!address(_tokenURI[stor_0]), Error('ERC721: token already minted'));

                v38 = _SafeAdd(_balanceOf[address(v26)], 1);

                _balanceOf[address(v26)] = v38;

                _tokenURI[stor_0] = address(v26) | ~0xffffffffffffffffffffffffffffffffffffffff & _tokenURI[stor_0];

                emit Transfer(0, address(v26), stor_0);

                v39 = 0x16e3(v37, stor_0, v26, 0);

                require(v39, Error('ERC721: transfer to non ERC721Receiver implementer'));

                v34 = 0x206f(v34);

            }

            goto {'0x109bB0x4fd', '0x10f0B0x4fd'};

        }

        v20 = 0x206f(v20);

    }

}
