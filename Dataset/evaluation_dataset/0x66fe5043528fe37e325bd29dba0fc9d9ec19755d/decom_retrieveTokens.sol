function retrieveTokens(address to, address anotherToken) public payable { 

    require(msg.data.length - 4 >= 64);

    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));

    require(_token != anotherToken, Error('The withdraw is restriected to extraneous tokens.'));

    require(msg.sender == _owner, Error('Ownable: caller is not the owner'));

    require(bool(anotherToken.code.size));

    v0, /* uint256 */ v1 = anotherToken.balanceOf(this).gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    if (this.balance >= 0) {

        if (anotherToken.code.size) {

            v2 = v3 = 0;

            while (v2 < 68) {

                MEM[v2 + MEM[64]] = MEM[v2 + (MEM[64] + 32)];

                v2 += 32;

            }

            if (v2 > 68) {

                MEM[MEM[64] + 68] = 0;

            }

            v4, /* uint256 */ v5, /* uint256 */ v6, /* uint256 */ v7 = anotherToken.transfer(to, v1).gas(msg.gas);

            if (RETURNDATASIZE() == 0) {

                v8 = v9 = 96;

            } else {

                v8 = v10 = new bytes[](RETURNDATASIZE());

                RETURNDATACOPY(v10.data, 0, RETURNDATASIZE());

            }

            if (!v4) {

                require(!MEM[v8], v7, MEM[v8]);

                v11 = new bytes[](v12.length);

                v13 = v14 = 0;

                while (v13 < v12.length) {

                    v11[v13] = v12[v13];

                    v13 += 32;

                }

                if (v13 > v12.length) {

                    v11[v12.length] = 0;

                }

                revert(Error(v11, v15, 'SafeERC20: low-level call failed'));

            } else {

                if (MEM[v8]) {

                    require(32 + v8 + MEM[v8] - (32 + v8) >= 32);

                    require(MEM[32 + v8] == bool(MEM[32 + v8]));

                    require(MEM[32 + v8], Error('SafeERC20: ERC20 operation did not succeed'));

                }

                exit;

            }

        } else {

            MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

            MEM[MEM[64] + 4] = 32;

            revert(Error('Address: call to non-contract'));

        }

    } else {

        MEM[MEM[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[MEM[64] + 4] = 32;

        revert(Error('Address: insufficient balance for call'));

    }

}
