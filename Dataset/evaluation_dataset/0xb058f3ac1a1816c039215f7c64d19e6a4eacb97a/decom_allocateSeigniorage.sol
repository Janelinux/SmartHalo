function allocateSeigniorage() public payable { 

    v0 = v1 = 1115;

    require(!owner_0[block.number][address(tx.origin)], Error('ContractGuard: one block, one function'));

    require(!owner_0[block.number][msg.sender], Error('ContractGuard: one block, one function'));

    require(!_migrated, Error('Treasury: migrated'));

    require(block.timestamp >= _getStartTime, Error('Epoch: not started yet'));

    v2 = 0x37b6();

    require(block.timestamp >= v2, Error('Epoch: not allowed'));

    require(bool(_cash.code.size));

    v3, /* address */ v4 = _cash.operator().gas(msg.gas);

    require(bool(v3), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v5 = v6 = address(v4) == address(this);

    if (v6) {

        require(bool(_bond.code.size));

        v7, /* address */ v8 = _bond.operator().gas(msg.gas);

        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v5 = v9 = address(v8) == address(this);

    }

    if (v5) {

        require(bool(_share.code.size));

        v10, /* address */ v11 = _share.operator().gas(msg.gas);

        require(bool(v10), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v5 = v12 = address(v11) == address(this);

    }

    if (v5) {

        require(bool(_boardroom.code.size));

        v13, /* address */ v14 = _boardroom.operator().gas(msg.gas);

        require(bool(v13), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v5 = v15 = address(v14) == address(this);

    }

    require(v5, Error('Treasury: need more permission'));

    0x4bb2();

    v16 = v17 = 0x4980(_seigniorageOracle);

    if (v17 > _cashPriceCeiling) {

        v18 = v19 = 0;

        v20 = v21 = 9787;

        v22 = v23 = _getReserve;

        require(bool(_cash.code.size));

        v24, v25 = _cash.totalSupply().gas(msg.gas);

        require(bool(v24), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v25 = v26.length;

        v27 = v26.data;

        while (1) {

            if (v22 <= v25) {

                v18 = v28 = v25 - v22;

                // Unknown jump to Block {'0x263b', '0x2a12'}. Refer to 3-address code (TAC);

                v29 = _SafeSub(_cashPriceOne, v16);

                v30 = 0x47e8(v29, v28);

                v31 = _SafeDiv(10 ** 18, v30);

                require(bool(_cash.code.size));

                v32, /* uint256 */ v33 = _cash.mint(address(this), v31).gas(msg.gas);

                if (bool(v32)) {

                    require(RETURNDATASIZE() >= 32);

                    v34 = 0x47e8(_fundAllocationRate, v31);

                    v35 = _SafeDiv(100, v34);

                    if (v35 > 0) {

                        0x4deb(v35, _fund, _cash);

                        require(bool(_fund.code.size));

                        v36 = _fund.deposit(_cash, v35, 'Treasury: Seigniorage Allocation').gas(msg.gas);

                        if (bool(v36)) {

                            emit ContributionPoolFunded(block.timestamp, v35);

                        } else {

                            RETURNDATACOPY(0, 0, RETURNDATASIZE());

                            revert(0, RETURNDATASIZE());

                        }

                    }

                    v18 = v37 = _SafeSub(v35, v31);

                    v0 = v38 = 0;

                    v16 = v39 = 10775;

                    v20 = v40 = 10770;

                    v22 = v41 = _getReserve;

                    require(bool(_bond.code.size));

                    v42 = _bond.totalSupply().gas(msg.gas);

                    if (bool(v42)) {

                        require(RETURNDATASIZE() >= 32);

                        v25 = v43 = MEM[MEM[64]];

                    } else {

                        RETURNDATACOPY(0, 0, RETURNDATASIZE());

                        revert(0, RETURNDATASIZE());

                    }

                } else {

                    RETURNDATACOPY(0, 0, RETURNDATASIZE());

                    revert(0, RETURNDATASIZE());

                }

                if (v18 >= v28) {

                }

                if (v18 > 0) {

                    v44 = _SafeAdd(v18, _getReserve);

                    _getReserve = v44;

                    emit TreasuryFunded(block.timestamp, v18);

                }

                v45 = _SafeSub(v18, v18);

                if (v45 > 0) {

                    0x4deb(v45, _boardroom, _cash);

                    require(bool(_boardroom.code.size));

                    v46 = _boardroom.allocateSeigniorage(v45).gas(msg.gas);

                    require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                    emit 0x3ca7276ab7799bf73fb79d27ff0610cd7049574f2508ef8445162833d439aea(block.timestamp, v45);

                }

            } else {

                v47 = new bytes[](v26.length);

                v48 = 0;

                while (v48 < v26.length) {

                    v47[v48] = v26[v48];

                    v48 = v48 + 32;

                }

                if (30) {

                    MEM[v47.data] = bytes30('SafeMath: subtraction overflow');

                }

                revert(Error(v47));

            }

        }

    }

    v49 = _SafeAdd(1, _getCurrentEpoch);

    _getCurrentEpoch = v49;

    owner_0[block.number][address(tx.origin)] = 1;

    owner_0[block.number][msg.sender] = 1;

}
