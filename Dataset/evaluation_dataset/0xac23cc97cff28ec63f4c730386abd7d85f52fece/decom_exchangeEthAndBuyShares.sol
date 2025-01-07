function exchangeEthAndBuyShares(address varg0, address varg1, uint256 varg2, address varg3, address varg4, bytes varg5, uint256 varg6) public payable { 

    require(msg.data.length - 4 >= 224);

    require(varg5 <= 0x100000000);

    require(4 + varg5 + 32 <= 4 + (msg.data.length - 4));

    require(!((varg5.length > 0x100000000) | (36 + varg5 + varg5.length > 4 + (msg.data.length - 4))));

    require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);

    v0 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.deposit().value(msg.value).gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    if (varg1 != 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2) {

        0x559(msg.value, varg4, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);

        v1, v2, v3 = varg3.call(MEM[(MEM[64]) len (MEM[64] + varg5.length - MEM[64])], MEM[(MEM[64]) len 0]).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v4 = v5 = 96;

        } else {

            v4 = v6 = new bytes[](RETURNDATASIZE());

            v2 = v6.data;

            RETURNDATACOPY(v2, 0, RETURNDATASIZE());

        }

        if (v1) {

            require(varg1.code.size);

            v7, v8 = varg1.balanceOf(address(this)).gas(msg.gas);

            require(v7); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 32);

            require(v8 >= varg6, Error('exchangeAndBuyShares: _minInvestmentAmount not met'));

            0x559(v8, varg0, varg1);

            v9 = v10 = 0x617(varg2, v8, msg.sender, varg0);

            require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);

            v11, v12 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.balanceOf(address(this)).gas(msg.gas);

            require(v11); // checks call status, propagates error data on error

            require(RETURNDATASIZE() >= 32);

            if (v12) {

                require(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.code.size);

                v13 = 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2.withdraw(v12).gas(msg.gas);

                require(v13); // checks call status, propagates error data on error

                v14, v15, v3 = msg.sender.call().value(v12).gas(msg.gas);

                if (RETURNDATASIZE() == 0) {

                    v16 = v17 = 96;

                } else {

                    v16 = v18 = new bytes[](RETURNDATASIZE());

                    v15 = v18.data;

                    RETURNDATACOPY(v15, 0, RETURNDATASIZE());

                }

                if (!v14) {

                    v19 = new array[](MEM[v16]);

                    v20 = v21 = MEM[v16];

                    v22 = v23 = v19.data;

                    if (v21) {

                        v24 = v19.data;

                        v19[0] = MEM[0 + v3];

                        v25 = v26 = 32;

                        goto 0x2960x6a;

                    }

                }

            }

        } else {

            v27 = new array[](MEM[v4]);

            v22 = v28 = v27.data;

            v20 = v29 = MEM[v4];

            v25 = v30 = 0;

        }

        while (v25 < v20) {

            MEM[v25 + v22] = MEM[v25 + v3];

            v25 += 32;

        }

        v31 = v20 + v22;

        if (0x1f & v20) {

            MEM[v31 - (0x1f & v20)] = ~(256 ** (32 - (0x1f & v20)) - 1) & MEM[v31 - (0x1f & v20)];

        }

        revert(Error(v19));

    } else {

        0x559(msg.value, varg0, 0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2);

        v9 = v32 = 0x617(varg2, msg.value, msg.sender, varg0);

    }

    return v9;

}
