function stake(uint256[] varg0, uint256[] varg1, address varg2, uint32 varg3, bytes varg4) public payable { 

    require(msg.data.length - 4 >= 160);

    require(varg0 <= 0xffffffffffffffff);

    require(4 + varg0 + 31 < msg.data.length);

    require(varg0.length <= 0xffffffffffffffff);

    require(4 + varg0 + (varg0.length << 5) + 32 <= msg.data.length);

    require(varg1 <= 0xffffffffffffffff);

    require(4 + varg1 + 31 < msg.data.length);

    require(varg1.length <= 0xffffffffffffffff);

    require(4 + varg1 + (varg1.length << 5) + 32 <= msg.data.length);

    require(varg2 == varg2);

    require(varg3 == varg3);

    require(varg4 <= 0xffffffffffffffff);

    require(4 + varg4 + 31 < msg.data.length);

    require(varg4.length <= 0xffffffffffffffff);

    require(4 + varg4 + varg4.length + 32 <= msg.data.length);

    require(_unstake != 2, Error('ReentrancyGuard: reentrant call'));

    _unstake = 2;

    require(varg1.length == varg0.length, Error(0x4532000000000000000000000000000000000000000000000000000000000000));

    require(block.timestamp <= varg3, Error(0x4533000000000000000000000000000000000000000000000000000000000000));

    v0 = new array[](32 + ((varg1.length << 5) + (32 + ((varg0.length << 5) + (v0.data + 160)))) - MEM[64] - 32);

    MEM[v0.data] = 160;

    v0[160] = varg0.length;

    require(varg0.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    CALLDATACOPY(v1.data, 4 + varg0 + 32, varg0.length << 5);

    v1[varg0.length] = 0;

    v0[32] = 32 + ((varg0.length << 5) + (v0.data + 160)) - v0.data;

    v1[varg0.length] = varg1.length;

    require(varg1.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

    CALLDATACOPY(v2.data, 4 + varg1 + 32, varg1.length << 5);

    v2[varg1.length] = 0;

    v0[64] = msg.sender;

    v0[96] = varg3;

    v0[128] = address(this);

    v3 = v4.length;

    v5 = v0.data;

    v6 = new bytes[](varg4.length);

    CALLDATACOPY(v6.data, 4 + varg4 + 32, varg4.length);

    v6[varg4.length] = 0;

    if (65 != v6.length) {

        if (64 != v6.length) {

            v7 = v8 = 0;

            v9 = v10 = 2;

        } else {

            v11 = _SafeAdd(27, MEM[v6 + 64] >> 255);

            if (MEM[v6 + 64] & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0) {

                v12 = v13 = 27 != 0xff & v11;

                if (v13) {

                    v12 = 28 != 0xff & v11;

                }

                if (!v12) {

                    MEM[MEM[64]] = 0;

                    v14 = ecrecover(keccak256('\x19Ethereum Signed Message:\n32', keccak256(v0)), v11 & 0xff, MEM[v6.data], MEM[v6 + 64] & 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff);

                    require(v14); // checks call status, propagates error data on error

                    v7 = v15 = MEM[~31 + MEM[64]];

                    if (address(v15)) {

                        v9 = v16 = 0;

                    } else {

                        v7 = v17 = 0;

                        v9 = v18 = 1;

                    }

                } else {

                    v7 = 0;

                    v9 = 4;

                }

            } else {

                v7 = v19 = 0;

                v9 = v20 = 3;

            }

        }

    } else {

        if (MEM[v6 + 64] <= 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0) {

            v21 = v22 = 27 != 0xff & (byte(MEM[v6 + 96], 0x0));

            if (v22) {

                v21 = 28 != 0xff & (byte(MEM[v6 + 96], 0x0));

            }

            if (!v21) {

                MEM[MEM[64]] = 0;

                v23 = ecrecover(keccak256('\x19Ethereum Signed Message:\n32', keccak256(v0)), (byte(MEM[v6 + 96], 0x0)) & 0xff, MEM[v6.data], MEM[v6 + 64]);

                require(v23); // checks call status, propagates error data on error

                v7 = v24 = MEM[~31 + MEM[64]];

                if (address(v24)) {

                    v9 = v25 = 0;

                } else {

                    v7 = v26 = 0;

                    v9 = v27 = 1;

                }

            } else {

                v7 = v28 = 0;

                v9 = v29 = 4;

            }

        } else {

            v7 = v30 = 0;

            v9 = v31 = 3;

        }

        goto 0x1b8c0x1b23B0x1afdB0x19d1;

    }

    require(v9 <= 4, Panic(33));

    if (v9 != 0) {

        require(v9 <= 4, Panic(33));

        require(v9 != 1, Error('ECDSA: invalid signature'));

        require(v9 <= 4, Panic(33));

        require(v9 != 2, Error('ECDSA: invalid signature length'));

        require(v9 <= 4, Panic(33));

        require(v9 != 3, Error("ECDSA: invalid signature 's' value"));

        require(v9 <= 4, Panic(33));

        require(v9 != 4, Error("ECDSA: invalid signature 'v' value"));

    }

    require(address(v7) == stor_1681_0_19, Error(0x4537000000000000000000000000000000000000000000000000000000000000));

    0x1693(varg2);

    require(this != varg2, Error(0x4534000000000000000000000000000000000000000000000000000000000000));

    v32 = v33 = 0;

    while (v32 < varg0.length) {

        if (v32 < varg0.length) {

            break;

        }

        require(v32 < varg0.length, Panic(50));

        if (stor_ca_0_19.code.size) {

            break;

        }

        require(stor_ca_0_19.code.size);

        v34, v35 = stor_ca_0_19.ownerOf(varg0[v32]).gas(msg.gas);

        if (v34) {

            break;

        }

        require(v34); // checks call status, propagates error data on error

        if (MEM[64] + RETURNDATASIZE() - MEM[64] >= 32) {

            break;

        }

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        if (v35 == address(v35)) {

            break;

        }

        require(v35 == address(v35));

        if (address(v35) == msg.sender) {

            break;

        }

        require(address(v35) == msg.sender, Error(0x4535000000000000000000000000000000000000000000000000000000000000));

        require(stor_ca_0_19.code.size);

        v36 = stor_ca_0_19.safeTransferFrom(msg.sender, this, varg0[v32]).gas(msg.gas);

        require(v36); // checks call status, propagates error data on error

        require(v32 < varg1.length, Panic(50));

        require(varg1[v32] <= 0xffff, Error("SafeCast: value doesn't fit in 16 bits"));

        require(v32 < varg0.length, Panic(50));

        require(varg0[v32] < 5555, Panic(50));

        STORAGE[203 + varg0[v32]] = 0x0 | 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff & (0x0 | ~0xffff0000000000000000000000000000000000000000000000000000 & (0x0 | ~0xffff000000000000000000000000000000000000000000000000 & (0x0 | ~0xffff00000000000000000000000000000000000000000000 & (varg2 << 16 | ~0xffffffffffffffffffffffffffffffffffffffff0000 & (uint16(varg1[v32]) | STORAGE[203 + varg0[v32]] & ~0xffff)))));

        require(v32 < varg1.length, Panic(50));

        v32 = _SafeAdd(v32, varg1[v32]);

        v32 = 0x25e7(v32);

    }

    v37 = 0x17d4(v32);

    0x1323(1, v37);

    v38 = 0x17d4(v32);

    v39 = 0x14d6(1, v38, varg2);

    _unstake = 1;

}
