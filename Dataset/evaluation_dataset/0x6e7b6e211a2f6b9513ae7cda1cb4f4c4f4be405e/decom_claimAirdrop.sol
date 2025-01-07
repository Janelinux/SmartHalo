function claimAirdrop(address varg0, uint256 varg1, uint256 varg2, bytes varg3) public payable { 

    require(msg.data.length - 4 >= 128);

    require(varg0 == varg0);

    require(varg3 <= 0xffffffffffffffff);

    require(4 + varg3 + 31 < msg.data.length);

    require(varg3.length <= 0xffffffffffffffff, Panic(65));

    require(!((MEM[64] + (63 + (~0x1f & varg3.length + 31) & ~0x1f) < MEM[64]) | (MEM[64] + (63 + (~0x1f & varg3.length + 31) & ~0x1f) > 0xffffffffffffffff)), Panic(65));

    require(4 + varg3 + varg3.length + 32 <= msg.data.length);

    CALLDATACOPY(v0.data, 4 + varg3 + 32, varg3.length);

    v0[varg3.length] = 0;

    require(_claimAirdrop != 2, Error('ReentrancyGuard: reentrant call'));

    _claimAirdrop = 2;

    0xb6d();

    require(!(0xff & _claimed[varg0]), Error('ShinikiAirdrop: receiver is claimed'));

    v1 = v2 = 0;

    v3 = new array[](v0.length);

    while (v1 < v0.length) {

        v3[v1] = v0[v1];

        v1 += 32;

    }

    if (v1 > v0.length) {

        v3[v0.length] = v2;

    }

    require(_sIGNATURE_VERIFIER.code.size);

    v4, v5 = _sIGNATURE_VERIFIER.fullExit(varg0, varg1, varg2, v3).gas(msg.gas);

    require(v4); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(v5 == v5);

    require(v5, Error('ShinikiAirdrop: signature claim airdrop is invalid'));

    v6 = v7 = 0;

    while (uint64(v6) < varg1) {

        MEM[32] = 204;

        if (2907 <= stor_a75095fd5d0b095d4591ac39a4552a2079e3219c42fbca32c31bf3ce096fcb26) {

            MEM[32] = 204;

            require(6795 > stor_5e1b6268a1acd2f43ba3f87dd4e0f5d99b283d2db9efac071f3c1e2af0bce1ed, Error('ShinikiAirdrop: Amount input exceed'));

            MEM[32] = 204;

            if (5661 == stor_5e1b6268a1acd2f43ba3f87dd4e0f5d99b283d2db9efac071f3c1e2af0bce1ed) {

                MEM[32] = 204;

                stor_5e1b6268a1acd2f43ba3f87dd4e0f5d99b283d2db9efac071f3c1e2af0bce1ed = 5662;

            }

            MEM[32] = 204;

            MEM[MEM[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = _ownerToken;

            MEM[4 + MEM[64] + 32] = varg0;

            MEM[4 + MEM[64] + 64] = stor_5e1b6268a1acd2f43ba3f87dd4e0f5d99b283d2db9efac071f3c1e2af0bce1ed;

            require(_tokenShiniki.code.size);

            v8 = _tokenShiniki.call(MEM[(MEM[64]) len 100], MEM[(MEM[64]) len 0]).gas(msg.gas);

            require(v8); // checks call status, propagates error data on error

            MEM[32] = 204;

            v9 = _SafeAdd(1, stor_5e1b6268a1acd2f43ba3f87dd4e0f5d99b283d2db9efac071f3c1e2af0bce1ed);

            MEM[32] = 204;

            stor_5e1b6268a1acd2f43ba3f87dd4e0f5d99b283d2db9efac071f3c1e2af0bce1ed = v9;

        } else {

            MEM[32] = 204;

            if (2002 == stor_a75095fd5d0b095d4591ac39a4552a2079e3219c42fbca32c31bf3ce096fcb26) {

                MEM[32] = 204;

                stor_a75095fd5d0b095d4591ac39a4552a2079e3219c42fbca32c31bf3ce096fcb26 = 2003;

            }

            MEM[32] = 204;

            MEM[MEM[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000;

            MEM[4 + MEM[64]] = _ownerToken;

            MEM[4 + MEM[64] + 32] = varg0;

            MEM[4 + MEM[64] + 64] = stor_a75095fd5d0b095d4591ac39a4552a2079e3219c42fbca32c31bf3ce096fcb26;

            require(_tokenShiniki.code.size);

            v10 = _tokenShiniki.call(MEM[(MEM[64]) len 100], MEM[(MEM[64]) len 0]).gas(msg.gas);

            require(v10); // checks call status, propagates error data on error

            MEM[32] = 204;

            v11 = _SafeAdd(1, stor_a75095fd5d0b095d4591ac39a4552a2079e3219c42fbca32c31bf3ce096fcb26);

            MEM[32] = 204;

            stor_a75095fd5d0b095d4591ac39a4552a2079e3219c42fbca32c31bf3ce096fcb26 = v11;

        }

        require(0xffffffffffffffff != uint64(v6), Panic(17));

        v6 = 1 + uint64(v6);

    }

    _claimed[varg0] = 0x1 | ~0xff & _claimed[varg0];

    _claimAirdrop = 1;

}
