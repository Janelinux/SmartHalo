function harvest() public payable { 

    v0 = v1 = msg.sender == _admin;

    if (msg.sender != _admin) {

        v0 = v2 = msg.sender == _controller;

    }

    if (!v0) {

        v0 = address(0xc62b2ac62ba74979132c14f5c655edba5e959111) == msg.sender;

    }

    require(v0, Error('!authorized'));

    v3 = new struct(3);

    CALLDATACOPY(v3, msg.data.length, 96);

    require(bool(0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7.code.size));

    v4, /* uint256 */ v5 = 0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7.balances(0).gas(msg.gas);

    require(bool(v4), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v3.word0 = v5;

    v6 = v7 = MEM[64];

    v8 = v9 = 7205;

    v10 = v11 = 10 ** 12;

    v12 = v13 = 0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7;

    v14 = v15 = 32;

    v16 = v17 = 36;

    require(bool(v13.code.size));

    while (1) {

        v18 = v12.staticcall(MEM[v1bed_0x4V0xac4V0x1e6:v1bed_0x4V0xac4V0x1e6 + v1bed_0x3V0xac4V0x1e6], MEM[v1bed_0x4V0xac4V0x1e6:v1bed_0x4V0xac4V0x1e6 + v1bed_0x5V0xac4V0x1e6]).gas(msg.gas);

        if (bool(v18)) {

            break;

        }

        require(RETURNDATASIZE() >= 32);

        if (0x4903b0d100000000000000000000000000000000000000000000000000000000) {

            v19 = v20 = v10 * 0x4903b0d100000000000000000000000000000000000000000000000000000000;

            assert(0x4903b0d100000000000000000000000000000000000000000000000000000000);

            require(v20 / 0x4903b0d100000000000000000000000000000000000000000000000000000000 == v10, Error('SafeMath: multiplication overflow'));

            // Unknown jump to Block {'0x1c25B0xac4B0x1e6', '0x1c89B0xac4B0x1e6'}. Refer to 3-address code (TAC);

        } else {

            v19 = 0;

            // Unknown jump to Block {'0x1c25B0xac4B0x1e6', '0x1c89B0xac4B0x1e6'}. Refer to 3-address code (TAC);

        }

        v14 = v21 = 32;

        v3.word1 = v19;

        MEM[MEM[64]] = 0x4903b0d100000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = 2;

        v6 = v22 = MEM[64];

        v8 = v23 = 7305;

        v10 = v24 = 10 ** 12;

        v12 = v25 = 0xbebc44782c7db0a1a60cb6fe97d0b483032ff1c7;

        v26 = 'SafeMath: multiplication overflow';

        v16 = v27 = 36;

        require(bool(v25.code.size));

        v3.word2 = v19;

        v28 = v29 = 0;

        v28 = v30 = 1;

        while (v28 < 3) {

            assert(v28 < 3);

            assert(v28 < 3);

            v28 += 1;

        }

        if (v28) {

            if (1 != v28) {

                v31 = v32 = 0xdac17f958d2ee523a2206206994597c13d831ec7;

                v31 = v33 = 3;

            } else {

                v31 = v34 = 0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48;

                v31 = 2;

            }

        } else {

            v31 = v35 = 0x6b175474e89094c44da98b954eedeac495271d0f;

            v31 = v36 = 1;

        }

        0x1d46(v37);

        require(bool((address(v37)).code.size));

        v38, /* uint256 */ v39 = address(v37).balanceOf(this).gas(msg.gas);

        require(bool(v38), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        if (v39) {

            v40 = _SafeMul(_performanceFee, v39);

            assert(10000);

            if (v40 / 10000) {

                require(bool(_controller.code.size));

                v41, v42 = _controller.treasury().gas(msg.gas);

                require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(RETURNDATASIZE() >= 32);

                require(address(v42), Error('treasury = zero address'));

                0x1382(v40 / 10000, v42, address(v37));

            }

            require(bool((address(v37)).code.size));

            v43, v31 = address(v37).balanceOf(this).gas(msg.gas);

            require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 32);

            if (v31) {

                0x1256(0, 0x64448b78561690b70e17cbe8029a3e5c1bb7136e, address(v37));

                0x1256(v31, 0x64448b78561690b70e17cbe8029a3e5c1bb7136e, address(v37));

                v31 = v44 = new struct(4);

                CALLDATACOPY(v44, msg.data.length, 128);

                assert(v45 < 4);

                MEM[(v45 << 5) + v44] = v31;

                require(bool((address(0x4f062658eaaf2c1ccf8c8e36d6824cdf41167956)).code.size));

                v46, v31 = address(0x4f062658eaaf2c1ccf8c8e36d6824cdf41167956).get_virtual_price().gas(msg.gas);

                require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                v47 = 'SafeMath: division by zero';

                require(RETURNDATASIZE() >= 32);

                v31 = v47.length;

                v31 = v48 = 0;

                v31 = v49 = 8236;

                v31 = v50 = 47908;

                v31 = v51 = 10 ** 18;

                v31 = v52 = 8224;

                assert(v45 < 4);

                v31 = v53 = STORAGE[v45 + 8];

                while (1) {

                    if (v31) {

                        // Unknown jump to Block 0x15300x1e79B0xc6eB0x1e6. Refer to 3-address code (TAC);

                    }

                    v31 = v54 = 0;

                    // Unknown jump to Block {'0x2020B0xc6eB0x1e6', '0xbb24B0xc6eB0x1e6'}. Refer to 3-address code (TAC);

                    continue;

                    if (v31) {

                        assert(v31);

                        v31 = v31 / v31;

                    } else {

                        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                        MEM[MEM[64] + 4] = 32;

                        v55 = new bytes[](v47.length);

                        if (v47.length) {

                            v56 = v47.data;

                            v57 = v55.data;

                            v55[0] = v47[0];

                            v58 = 32;

                            while (v58 < v47.length) {

                                v55[v58] = v47[v58];

                                v58 += 32;

                            }

                        }

                        if (26) {

                            MEM[v55.data] = bytes26(MEM[v55.data]);

                        }

                        revert(Error(v55));

                    }

                    v31 *= v31;

                    assert(v31);

                    if (v31 / v31 != v31) {

                        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

                        MEM[4 + MEM[64]] = 32;

                        revert(Error('SafeMath: multiplication overflow'));

                    }

                    // Unknown jump to Block {'0x202cB0xc6eB0x1e6', '0x2020B0xc6eB0x1e6', '0xbb24B0xc6eB0x1e6'}. Refer to 3-address code (TAC);

                }

                v59 = _SafeMul(10000 - _slippage, v31);

                assert(10000);

                MEM[MEM[64]] = 0x29b2f3400000000000000000000000000000000000000000000000000000000;

                v60 = v61 = 0;

                while (v60 < 128) {

                    MEM[v60 + (4 + MEM[64])] = MEM[v60 + v31];

                    v60 += 32;

                }

                require(bool(0x64448b78561690b70e17cbe8029a3e5c1bb7136e.code.size));

                v62 = 0x64448b78561690b70e17cbe8029a3e5c1bb7136e.add_liquidity(v63, v63, v63, v63, v59 / 10000).gas(msg.gas);

                require(bool(v62), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(RETURNDATASIZE() >= 32);

            }

            require(bool(0xd2967f45c4f384deea880f807be904762a3dea07.code.size));

            v64, /* uint256 */ v65 = 0xd2967f45c4f384deea880f807be904762a3dea07.balanceOf(this).gas(msg.gas);

            require(bool(v64), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 32);

            if (v65) {

                0x1256(0, 0xc5cfada84e902ad92dd40194f0883ad49639b023, 0xd2967f45c4f384deea880f807be904762a3dea07);

                0x1256(v65, 0xc5cfada84e902ad92dd40194f0883ad49639b023, 0xd2967f45c4f384deea880f807be904762a3dea07);

                require(bool((address(0xc5cfada84e902ad92dd40194f0883ad49639b023)).code.size));

                v66 = address(0xc5cfada84e902ad92dd40194f0883ad49639b023).deposit(v65).gas(msg.gas);

                require(bool(v66), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                // Unknown jump to Block 0x8310xa2fB0x1e6. Refer to 3-address code (TAC);

            }

            // Unknown jump to Block 0xb66b. Refer to 3-address code (TAC);

        }

        exit;

    }

    revert(0, RETURNDATASIZE());

}
