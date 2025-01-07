function 0x1490(address varg0) private { 

    _lpZoneEth = varg0;

    if (!_lpZoneEth) {

        return ;

    } else {

        require(bool(_lpZoneEth.code.size));

        v0, /* uint112 */ v1, /* uint112 */ v2 = _lpZoneEth.getReserves().gas(msg.gas);

        require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 96);

        v3 = v4 = bool(uint112(v1));

        if (uint112(v1)) {

            v3 = v5 = bool(uint112(v2));

        }

        require(v3, Error('No liquidity on the pool'));

        MEM[MEM[64]] = 0;

        require(uint112(v1) > 0, Error('FixedPoint::fraction: division by zero'));

        if (uint112(v2)) {

            if (uint112(v2) > uint144.max) {

                v6 = v7 = uint112(v2) * (uint112.max + 1) % uint256.max - (uint112(v2) << 112);

                if (uint112(v2) * (uint112.max + 1) % uint256.max < uint112(v2) << 112) {

                    v6 = v8 = v7 - 1;

                }

                assert(uint112(v1));

                if (uint112(v2) * (uint112.max + 1) % uint112(v1) > uint112(v2) << 112) {

                    v6 = v9 = v6 - 1;

                }

                if (v6) {

                    require(v6 < uint112(v1), Error('FullMath: FULLDIV_OVERFLOW'));

                    assert(uint112(v1) & 0 - uint112(v1));

                    assert(uint112(v1) & 0 - uint112(v1));

                    assert(uint112(v1) & 0 - uint112(v1));

                    v10 = (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * ((2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)))) * (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1))))) * ((2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)))) * (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1))));

                    v11 = (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * ((2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * v10) * v10)) * ((2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * v10) * v10);

                    v12 = (2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * ((2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * v11) * v11)) * ((2 - uint112(v1) / (uint112(v1) & 0 - uint112(v1)) * v11) * v11);

                    v13 = ((1 + (0 - (uint112(v1) & 0 - uint112(v1))) / (uint112(v1) & 0 - uint112(v1))) * v6 + ((uint112(v2) << 112) - uint112(v2) * (uint112.max + 1) % uint112(v1)) / (uint112(v1) & 0 - uint112(v1))) * (v12 * (2 - v12 * (uint112(v1) / (uint112(v1) & 0 - uint112(v1)))));

                } else {

                    assert(uint112(v1));

                    v13 = v14 = ((uint112(v2) << 112) - uint112(v2) * (uint112.max + 1) % uint112(v1)) / uint112(v1);

                }

                require(v15 <= uint224.max, Error('FixedPoint::fraction: overflow'));

            } else {

                assert(uint112(v1));

                v13 = v16 = (uint112(v2) << 112) / uint112(v1);

                require(v16 <= uint224.max, Error('FixedPoint::fraction: overflow'));

            }

            v17 = v18 = MEM[64];

            MEM[64] = 32 + v18;

            MEM[v18] = uint224(v13);

        } else {

            v17 = v19 = MEM[64];

            MEM[64] = v19 + 32;

            MEM[v19] = 0;

        }

        _price0AverageLast = MEM[v17];

        MEM[MEM[64]] = 0;

        require(uint112(v2) > 0, Error('FixedPoint::fraction: division by zero'));

        if (uint112(v1)) {

            if (uint112(v1) > uint144.max) {

                v20 = v21 = uint112(v1) * (uint112.max + 1) % uint256.max - (uint112(v1) << 112);

                if (uint112(v1) * (uint112.max + 1) % uint256.max < uint112(v1) << 112) {

                    v20 = v22 = v21 - 1;

                }

                assert(uint112(v2));

                if (uint112(v1) * (uint112.max + 1) % uint112(v2) > uint112(v1) << 112) {

                    v20 = v23 = v20 - 1;

                }

                if (v20) {

                    require(v20 < uint112(v2), Error('FullMath: FULLDIV_OVERFLOW'));

                    assert(uint112(v2) & 0 - uint112(v2));

                    assert(uint112(v2) & 0 - uint112(v2));

                    assert(uint112(v2) & 0 - uint112(v2));

                    v24 = (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * ((2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)))) * (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2))))) * ((2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)))) * (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2))));

                    v25 = (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * ((2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * v24) * v24)) * ((2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * v24) * v24);

                    v26 = (2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * ((2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * v25) * v25)) * ((2 - uint112(v2) / (uint112(v2) & 0 - uint112(v2)) * v25) * v25);

                    v27 = ((1 + (0 - (uint112(v2) & 0 - uint112(v2))) / (uint112(v2) & 0 - uint112(v2))) * v20 + ((uint112(v1) << 112) - uint112(v1) * (uint112.max + 1) % uint112(v2)) / (uint112(v2) & 0 - uint112(v2))) * (v26 * (2 - v26 * (uint112(v2) / (uint112(v2) & 0 - uint112(v2)))));

                } else {

                    assert(uint112(v2));

                    v27 = v28 = ((uint112(v1) << 112) - uint112(v1) * (uint112.max + 1) % uint112(v2)) / uint112(v2);

                }

                require(v29 <= uint224.max, Error('FixedPoint::fraction: overflow'));

            } else {

                assert(uint112(v2));

                v27 = v30 = (uint112(v1) << 112) / uint112(v2);

                require(v30 <= uint224.max, Error('FixedPoint::fraction: overflow'));

            }

            v31 = v32 = MEM[64];

            MEM[64] = 32 + v32;

            MEM[v32] = uint224(v27);

        } else {

            v31 = v33 = MEM[64];

            MEM[64] = v33 + 32;

            MEM[v33] = 0;

        }

        _price1AverageLast = MEM[v31];

        v34, v35, v36 = 0x11dd(_lpZoneEth);

        _price0CumulativeLast = v36;

        _price1CumulativeLast = v35;

        _blockTimestampLast = v34;

        return ;

    }

}
