function rebalance(int24 varg0, int24 varg1, int24 varg2, int24 varg3, address varg4, int256 varg5) public payable { 

    require(msg.data.length - 4 >= 192);

    require(msg.sender == address(_limitLower >> 48), Error('only owner'));

    v0 = v1 = (signextend(signextend(varg0, 0x2), 0x2)) < (signextend(signextend(varg1, 0x2), 0x2));

    if (v1) {

        assert(signextend(signextend(_fee >> 184, 0x2), 0x2));

        v0 = v2 = !(signextend((signextend(signextend(varg0, 0x2), 0x2)) % (signextend(signextend(_fee >> 184, 0x2), 0x2)), 0x2));

    }

    if (v0) {

        assert(signextend(signextend(_fee >> 184, 0x2), 0x2));

        v0 = v3 = !(signextend((signextend(signextend(varg1, 0x2), 0x2)) % (signextend(signextend(_fee >> 184, 0x2), 0x2)), 0x2));

    }

    require(v0, Error('base position invalid'));

    v4 = v5 = (signextend(signextend(varg2, 0x2), 0x2)) < (signextend(signextend(varg3, 0x2), 0x2));

    if (v5) {

        assert(signextend(signextend(_fee >> 184, 0x2), 0x2));

        v4 = v6 = !(signextend((signextend(signextend(varg2, 0x2), 0x2)) % (signextend(signextend(_fee >> 184, 0x2), 0x2)), 0x2));

    }

    if (v4) {

        assert(signextend(signextend(_fee >> 184, 0x2), 0x2));

        v4 = v7 = !(signextend((signextend(signextend(varg3, 0x2), 0x2)) % (signextend(signextend(_fee >> 184, 0x2), 0x2)), 0x2));

    }

    require(v4, Error('limit position invalid'));

    MEM[MEM[64] + 58] = 0x514ea4bf00000000000000000000000000000000000000000000000000000000;

    MEM[MEM[64] + 62] = keccak256(this, signextend(signextend(_fee >> 208, 0x2), 0x2), signextend(signextend(_fee >> 232, 0x2), 0x2));

    require(_pool.code.size);

    require(v8); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 160);

    if (uint128(v9)) {

        require(_pool.code.size);

        v10 = _pool.burn(signextend(signextend(_fee >> 208, 0x2), 0x2), signextend(signextend(_fee >> 232, 0x2), 0x2), 0).gas(msg.gas);

        require(v10); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 64);

    }

    require(_pool.code.size);

    require(v11); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 160);

    if (uint128(v12)) {

        require(_pool.code.size);

        v13 = _pool.burn(signextend(signextend(_limitLower, 0x2), 0x2), signextend(signextend(_limitLower >> 24, 0x2), 0x2), 0).gas(msg.gas);

        require(v13); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 64);

    }

    require(_pool.code.size);

    require(v14); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 160);

    require(_pool.code.size);

    v15, v16, v17, v18, v19, v20 = _pool.positions(keccak256(this, signextend(signextend(_limitLower, 0x2), 0x2), signextend(signextend(_limitLower >> 24, 0x2), 0x2))).gas(msg.gas);

    require(v15); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 160);

    require(uint128(v21) + uint128(v19) >= uint128(v19), Error('SafeMath: addition overflow'));

    require(uint128(v22) + uint128(v20) >= uint128(v20), Error('SafeMath: addition overflow'));

    v23, v24 = 0x3615(1, this, v9, signextend(_fee >> 232, 0x2), signextend(_fee >> 208, 0x2));

    v25, v26 = 0x3615(1, this, v12, signextend(_limitLower >> 24, 0x2), signextend(_limitLower, 0x2));

    if (uint128(v21) + uint128(v19)) {

        v27 = _SafeDiv(10, uint128(v21) + uint128(v19));

        if (this.balance >= 0) {

            if (_token0.code.size) {

                v28 = v29 = MEM[64];

                v30 = v31 = 32 + MEM[64];

                while (v32 >= 32) {

                    MEM[v28] = MEM[v30];

                    v32 = v32 + ~31;

                    v28 += 32;

                    v30 += 32;

                }

                MEM[v28] = MEM[v30] & ~(256 ** (32 - v32) - 1) | MEM[v28] & 256 ** (32 - v32) - 1;

                v33, v34, v35, v36 = _token0.transfer(varg4, v27).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v37 = v38 = 96;

                } else {

                    v37 = v39 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v39.data, 0, RETURNDATASIZE());

                }

                if (!v33) {

                    require(!MEM[v37]v36, MEM[v37]);

                    v40 = new array[](v41.length);

                    if (v41.length) {

                        v42 = v41.data;

                        v43 = v40.data;

                        v40[0] = v41[0];

                        v44 = v45 = 32;

                        while (v44 < v41.length) {

                            v40[v44] = v41[v44];

                            v44 += 32;

                        }

                    }

                    v46 = v47 = v41.length + v40.data;

                    if (0) {

                        MEM[v47 - 0] = ~0x0 & MEM[v47 - 0];

                    }

                    revert(Error(v40));

                } else {

                    if (MEM[v37]) {

                        require(MEM[v37] >= 32);

                        require(MEM[32 + v37], Error('SafeERC20: ERC20 operation did not succeed'));

                        goto 0x592eB0x1698;

                    }

                    goto 0x16ab;

                }

            } else {

                MEM[MEM[64] + 4] = 32;

                revert(Error('Address: call to non-contract'));

            }

        } else {

            MEM[4 + MEM[64]] = 32;

            revert(Error('Address: insufficient balance for call'));

        }

    }

    if (uint128(v22) + uint128(v20)) {

        v48 = _SafeDiv(10, uint128(v22) + uint128(v20));

        if (this.balance >= 0) {

            if ((address(_fee)).code.size) {

                v49 = v50 = MEM[64];

                v51 = v52 = 32 + MEM[64];

                while (v53 >= 32) {

                    MEM[v49] = MEM[v51];

                    v53 = v53 + ~31;

                    v49 += 32;

                    v51 += 32;

                }

                MEM[v49] = MEM[v51] & ~(256 ** (32 - v53) - 1) | MEM[v49] & 256 ** (32 - v53) - 1;

                v54, v55, v56, v57 = address(_fee).transfer(varg4, v48).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v58 = v59 = 96;

                } else {

                    v58 = v60 = new bytes[](RETURNDATASIZE());

                    RETURNDATACOPY(v60.data, 0, RETURNDATASIZE());

                }

                if (!v54) {

                    require(!MEM[v58]v57, MEM[v58]);

                    v61 = new array[](v62.length);

                    if (v62.length) {

                        v63 = v62.data;

                        v64 = v61.data;

                        v61[0] = v62[0];

                        v65 = v66 = 32;

                        while (v65 < v62.length) {

                            v61[v65] = v62[v65];

                            v65 += 32;

                        }

                    }

                    v67 = v68 = v62.length + v61.data;

                    if (0) {

                        MEM[v68 - 0] = ~0x0 & MEM[v68 - 0];

                    }

                    revert(Error(v61));

                } else {

                    if (MEM[v58]) {

                        require(MEM[v58] >= 32);

                        require(MEM[32 + v58], Error('SafeERC20: ERC20 operation did not succeed'));

                        goto 0x592eB0x16c0;

                    }

                    goto 0x16d3;

                }

            } else {

                MEM[MEM[64] + 4] = 32;

                revert(Error('Address: call to non-contract'));

            }

        } else {

            MEM[4 + MEM[64]] = 32;

            revert(Error('Address: insufficient balance for call'));

        }

    }

    v69 = 0xa7c();

    require(_token0.code.size);

    v70, v71 = _token0.balanceOf(this).gas(msg.gas);

    require(v70); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    require((address(_fee)).code.size);

    v72, v73 = address(_fee).balanceOf(this).gas(msg.gas);

    require(v72); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    emit Rebalance(signextend(v69, 0x2), v71, v73, uint128(v21) + uint128(v19), uint128(v22) + uint128(v20), _totalSupply);

    if (varg5) {

        if (varg5 <= 0) {

            v74 = v75 = 0 - varg5;

        }

        if (varg5 > 0) {

            v76 = v77 = 0x1000276a4;

        } else {

            v76 = v78 = 0xfffd8963efd1fc6a506488495d951d5263988d25;

        }

        v79 = new array[](32);

        v80 = v81 = 0;

        while (v80 < 32) {

            v79[v80] = MEM[v80 + (32 + MEM[64])];

            v80 += 32;

        }

        v82 = v83 = 32 + v79.data;

        if (0) {

            MEM[v83 - 0] = ~0x0 & MEM[v83 - 0];

        }

        require(_pool.code.size);

        v84 = _pool.swap(address(this), varg5 > 0, v74, address(v76), v79, v18, address(this)).gas(msg.gas);

        require(v84); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 64);

    }

    _fee = (0xffffff & (signextend(signextend(varg0, 0x2), 0x2))) << 208 | ~0xffffff0000000000000000000000000000000000000000000000000000 & _fee;

    _fee = (0xffffff & (signextend(signextend(varg1, 0x2), 0x2))) << 232 | ~0xffffff0000000000000000000000000000000000000000000000000000000000 & _fee;

    v85 = v86 = 6877;

    v87 = v88 = signextend(_fee >> 208, 0x2);

    v89 = v90 = signextend(_fee >> 232, 0x2);

    v91 = v92 = _token0;

    v93 = v94 = 32;

    v95 = v96 = MEM[64];

    v97 = v98 = 36;

    require(v92.code.size);

    while (1) {

        v99 = v91.staticcall(MEM[v95 len v97], MEM[v95 len v93]).gas(msg.gas);

        if (v99) {

            break;

        }

        if (RETURNDATASIZE() >= 32) {

            break;

        }

        require(RETURNDATASIZE() >= 32);

        require((address(_fee)).code.size);

        v100, v101 = address(_fee).balanceOf(this).gas(msg.gas);

        require(v100); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        require(_pool.code.size);

        v102, v103 = _pool.slot0().gas(msg.gas);

        require(v102); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 224);

        v104 = 0x390a(v87);

        v105 = 0x390a(v89);

        v106 = 0x4226(v101, address(this), v105, v104, MEM[MEM[64]]);

        goto {'0x1add', '0x1bcf'};

        v107, v108 = 0x30d3(this, v106, signextend(_fee >> 232, 0x2), signextend(_fee >> 208, 0x2));

        _limitLower = 0xffffff & (signextend(signextend(varg2, 0x2), 0x2)) | ~0xffffff & _limitLower;

        _limitLower = (0xffffff & (signextend(signextend(varg3, 0x2), 0x2))) << 24 | ~0xffffff000000 & _limitLower;

        v85 = v109 = 7119;

        v87 = v110 = signextend(_limitLower, 0x2);

        v89 = v111 = signextend(_limitLower >> 24, 0x2);

        v91 = v112 = _token0;

        MEM[MEM[64]] = 0x70a0823100000000000000000000000000000000000000000000000000000000;

        MEM[4 + MEM[64]] = address(this);

        v93 = v113 = 32;

        v95 = v114 = MEM[64];

        v97 = v115 = 36;

        require(v112.code.size);

        v116, v117 = 0x30d3(this, v106, signextend(_limitLower >> 24, 0x2), signextend(_limitLower, 0x2));

        exit;

    }

    revert(0, RETURNDATASIZE());

}
