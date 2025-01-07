function 0x422(uint256 varg0) private { 

    v0 = v1 = 0;

    require(bool((address(0xe97980f1d43c4cd4f1eef0277a2dea7ddbc2cd13)).code.size));

    v2, varg0 = address(0xe97980f1d43c4cd4f1eef0277a2dea7ddbc2cd13).getLastPaidForVault(address(varg0)).gas(msg.gas);

    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(RETURNDATASIZE() >= 32);

    v3 = v4 = varg0 >= block.timestamp;

    if (varg0 < block.timestamp) {

        v3 = v5 = !varg0;

    }

    if (!v3) {

        require(varg0 <= block.timestamp, Error('SafeMath: subtraction overflow'));

        v0 = v6 = block.timestamp - varg0;

        require(bool((address(varg0)).code.size));

        v7, varg0 = address(varg0).totalSupply().gas(msg.gas);

        require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        v0 = v8 = 0;

        varg0 = v9 = 1506;

        v0 = v10 = 10000;

        varg0 = v11 = 16513;

        v0 = v12 = 0x1e187e0;

        varg0 = v13 = 1494;

        varg0 = v14 = 17100;

        require(bool((address(0xe97980f1d43c4cd4f1eef0277a2dea7ddbc2cd13)).code.size));

        v15, /* uint256 */ v0 = address(0xe97980f1d43c4cd4f1eef0277a2dea7ddbc2cd13).getFeeBpsForVault(address(varg0)).gas(msg.gas);

        require(bool(v15), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(RETURNDATASIZE() >= 32);

        while (1) {

            if (varg0) {

                // Unknown jump to Block 0xd060x422. Refer to 3-address code (TAC);

            }

            varg0 = v16 = 0;

            // Unknown jump to Block {'0x5d6', '0x42cc'}. Refer to 3-address code (TAC);

            continue;

            varg0 *= v0;

            assert(varg0);

            require(varg0 / varg0 == v0, Error('SafeMath: multiplication overflow'));

            // Unknown jump to Block {'0x5d6', '0x42cc'}. Refer to 3-address code (TAC);

        }

        while (v0 <= 0) {

            assert(v0);

            varg0 = varg0 / v0;

            // Unknown jump to Block {'0x4081', '0x5e2'}. Refer to 3-address code (TAC);

            require(varg0 <= varg0, Error('SafeMath: subtraction overflow'));

            if (varg0 - varg0) {

                v17 = _SafeMul(varg0, varg0);

                v18 = _SafeDiv(varg0 - varg0, v17);

                v19 = _SafeDiv(2, v18);

                return v19, varg0, v0, varg0;

            } else {

                return 0, varg0, v0, varg0;

            }

        }

        revert(Error('SafeMath: division by zero'));

    } else {

        return 0;

    }

}
