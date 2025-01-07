function 0x39b(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require((address(varg2)).code.size, Error('ERC1967: new implementation is not a contract'));

    stor_360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc_0_19 = varg2;

    emit Upgraded(address(varg2));

    varg0 = v0 = varg1.word0 > 0;

    if (!varg0) {

        return ;

    } else {

        require((address(varg2)).code.size, Error('Address: delegate call to non-contract'));

        v1 = v2 = 0;

        while (v1 < varg1.word0) {

            MEM[v1 + v3.data] = varg1[v1];

            v1 += 32;

        }

        if (v1 > varg1.word0) {

            MEM[varg1.word0 + v3.data] = 0;

            goto 0x7cdB0x260B0x3b7;

        }

        v4, v5, v6 = address(varg2).delegatecall(v3.data).gas(msg.gas);

        if (RETURNDATASIZE() == 0) {

            v7 = v8 = 96;

        } else {

            v7 = v9 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v9.data, 0, RETURNDATASIZE());

        }

        if (!v4) {

            require(!MEM[v7]v6, MEM[v7]);

            v10 = new array[](v11.length);

            v12 = v13 = 0;

            while (v12 < v11.length) {

                v10[v12] = v11[v12];

                v12 += 32;

            }

            if (v12 > v11.length) {

                v10[v11.length] = 0;

                goto 0x7f6B0x4ddB0x260B0x3b7;

            }

            revert(Error(v10));

        } else {

            return ;

        }

    }

}
