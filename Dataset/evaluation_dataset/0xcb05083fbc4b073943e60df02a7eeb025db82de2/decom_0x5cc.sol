function 0x5cc(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    if (0 - varg0) {

        v0 = address(varg2);

        v1 = v2 = 0xff & owner_a[v0];

        if (!v2) {

            v3 = address(varg1);

            v1 = v4 = 0xff & owner_a[v3];

        }

        v5 = v6 = address(varg2) == 0x2877650ad8a9fc9351e67cfe2a18cebb178c821e;

        if (v6) {

            v5 = v7 = !v1;

        }

        if (v5) {

            v8 = address(varg1);

            v9 = _SafeAdd(_balanceOf[v8], varg0);

            require(v9 <= _maxWalletToken, Error('Exceeds maximum wallet token amount.', 'Exceeds maximum wallet token amount.'));

        }

        v10 = v11 = !v1;

        if (v11) {

            v10 = v12 = address(varg2) == 0x2877650ad8a9fc9351e67cfe2a18cebb178c821e;

            if (address(varg2) != 0x2877650ad8a9fc9351e67cfe2a18cebb178c821e) {

                v10 = v13 = address(varg1) == 0x2877650ad8a9fc9351e67cfe2a18cebb178c821e;

            }

        }

        if (v10) {

            require(!(varg0 & (_marketingFee > ~0 / varg0)), Panic(17));

            require(100, Panic(18));

            v14 = varg0 * _marketingFee / 100;

            0x813(v14, _marketingWallet, varg2);

            require(varg0 >= v14, Panic(17));

            varg0 = v15 = varg0 - v14;

        }

        0x813(varg0, varg1, varg2);

        return ;

    } else {

        0x813(0, varg1, varg2);

        return ;

    }

}
