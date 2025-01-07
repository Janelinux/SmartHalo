function settleBidder(address[] varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    v0 = 0x3399(varg0.length);

    require(!((MEM[64] + (~0x1f & v0 + 31) < MEM[64]) | (MEM[64] + (~0x1f & v0 + 31) > 0xffffffffffffffff)), Panic(65)); // failed memory allocation (too much memory)

    v1 = v2 = MEM[64] + 32;

    require(32 + (4 + varg0 + (varg0.length << 5)) <= msg.data.length);

    v3 = v4 = varg0.data;

    while (v3 < 32 + (4 + varg0 + (varg0.length << 5))) {

        require(msg.data[v3] == address(msg.data[v3]));

        MEM[v1] = msg.data[v3];

        v1 += 32;

        v3 += 32;

    }

    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));

    require(_publicSaleMint - 2, Error('ReentrancyGuard: reentrant call'));

    _publicSaleMint = 2;

    require(block.timestamp > _auctionEndDateTime, Error("Auction hasn't ended."));

    v5 = v6 = 1 == bool(uint8(_auctionWinnersSet));

    if (v6) {

        v5 = v7 = 1 == bool(uint8(_auctionWinnersSet >> 8));

    }

    require(v5, Error('Auction winners not set'));

    v8 = v9 = 0;

    while (v8 < varg0.length) {

        require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v10 = v11 = 1 == bool(uint8(_bids[address(MEM[32 + ((v8 << 5) + MEM[64])])].field4 >> 8));

        if (v11) {

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v10 = v12 = !uint8(_bids[address(MEM[32 + ((v8 << 5) + MEM[64])])].field2);

        }

        if (v10) {

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v10 = v13 = !uint8(_bids[address(MEM[32 + ((v8 << 5) + MEM[64])])].field4);

        }

        if (!v10) {

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v14 = v15 = !uint8(_bids[address(MEM[32 + ((v8 << 5) + MEM[64])])].field4 >> 8);

            if (!bool(uint8(_bids[address(MEM[32 + ((v8 << 5) + MEM[64])])].field4 >> 8))) {

                require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v14 = v16 = !uint8(_bids[address(MEM[32 + ((v8 << 5) + MEM[64])])].field4);

            }

            if (v14) {

                require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v17 = address(MEM[32 + (v8 << 5) + MEM[64]]).call().value(_bids[address(MEM[32 + (v8 << 5) + MEM[64]])].field1).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    MEM[MEM[64]] = RETURNDATASIZE();

                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());

                }

                require(v17, Error('Failed to send refund to loser.'));

                require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                _bids[address(MEM[32 + (v8 << 5) + MEM[64]])].field4 = 0x1 | bytes31(_bids[address(address(MEM[32 + (v8 << 5) + MEM[64]]))].field4);

            }

        } else {

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v18 = _SafeSub(_bids[address(MEM[32 + (v8 << 5) + MEM[64]])].field1, _bids[address(MEM[32 + (v8 << 5) + MEM[64]])].field5);

            if (v18) {

                require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

                v19 = address(MEM[32 + (v8 << 5) + MEM[64]]).call().value(v18).gas(msg.gas);

                if (RETURNDATASIZE() != 0) {

                    MEM[MEM[64]] = RETURNDATASIZE();

                    RETURNDATACOPY(MEM[64] + 32, 0, RETURNDATASIZE());

                }

                require(v19, Error('Failed to refund difference to winner.'));

            }

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            MEM[MEM[64]] = 0x6a62784200000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = address(MEM[32 + (v8 << 5) + MEM[64]]);

            v20 = _nft.call(MEM[(MEM[64]) len (36 + MEM[64] - MEM[64])], MEM[(MEM[64]) len 32]).gas(msg.gas);

            require(bool(v20), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            MEM[64] = MEM[64] + (RETURNDATASIZE() + 31 & ~0x1f);

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            _bids[address(MEM[32 + (v8 << 5) + MEM[64]])].field2 = 0x1 | bytes31(_bids[address(address(MEM[32 + (v8 << 5) + MEM[64]]))].field2);

            require(v8 < varg0.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            _bids[address(MEM[32 + (v8 << 5) + MEM[64]])].field4 = 0x1 | bytes31(_bids[address(address(MEM[32 + (v8 << 5) + MEM[64]]))].field4);

        }

        v8 = 0x3682(v8);

    }

    _publicSaleMint = 1;

}
