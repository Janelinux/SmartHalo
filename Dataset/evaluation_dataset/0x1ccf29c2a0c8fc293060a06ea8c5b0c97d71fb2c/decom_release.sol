function release(address varg0, address varg1) public nonPayable { 

    require(msg.data.length - 4 >= 64);

    require(varg0 == varg0);

    require(varg1 == varg1);

    require(_shares[varg1], Error('PaymentSplitter: account has no shares'));

    require(varg0.code.size);

    v0, v1 = varg0.balanceOf(this).gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    v2 = _SafeAdd(v1, _totalReleased[varg0]);

    v3 = 0x2ee(_released[varg1], v2, varg1);

    require(v3, Error('PaymentSplitter: account is not due payment'));

    v4 = _SafeAdd(_released[varg1], v3);

    _released[varg1] = v4;

    v5 = _SafeAdd(_totalReleased[varg0], v3);

    _totalReleased[varg0] = v5;

    if (varg0.code.size) {

        v6 = v7 = 0;

        while (v6 < 68) {

            MEM[v6 + MEM[64]] = MEM[v6 + (MEM[64] + 32)];

            v6 += 32;

        }

        if (v6 > 68) {

            MEM[MEM[64] + 68] = 0;

        }

        v8, v9, v10, v11 = varg0.transfer(varg1, v3).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v12 = v13 = 96;

        } else {

            v12 = v14 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v14.data, 0, RETURNDATASIZE());

        }

        if (!v8) {

            require(!MEM[v12]v11, MEM[v12]);

            v15 = new array[](v16.length);

            v17 = v18 = 0;

            while (v17 < v16.length) {

                v15[v17] = v16[v17];

                v17 += 32;

            }

            if (v17 > v16.length) {

                v15[v16.length] = 0;

            }

            revert(Error(v15, v19, 'SafeERC20: low-level call failed'));

        } else {

            if (MEM[v12]) {

                require(32 + v12 + MEM[v12] - (32 + v12) >= 32);

                require(MEM[32 + v12] == MEM[32 + v12]);

                require(MEM[32 + v12], Error('SafeERC20: ERC20 operation did not succeed'));

            }

            emit ERC20PaymentReleased(1350, varg0, v3);

            exit;

        }

    } else {

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: call to non-contract'));

    }

}
