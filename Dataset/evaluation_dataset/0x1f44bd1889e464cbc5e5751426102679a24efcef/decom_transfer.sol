function transfer(address varg0, uint256 varg1) public payable { 

    while (msg.value) {

        v0 = v1 = 1374;

        require(4 + (msg.data.length - 4) - 4 >= 64);

        require(varg0 == varg0);

        require(varg1 == varg1);

        v0 = v2 = 0;

        v0 = v3 = 3762;

        v0 = v4 = msg.sender;

        require(address(v4) - address(0x0), Error('ERC20: transfer from the zero address'));

        require(varg0 - address(0x0), Error('ERC20: transfer to the zero address'));

        require(varg1 > 0, Error('Transfer amount must be greater than zero'));

        v5 = address(v4) != _owner;

        if (!bool(address(v4) == _owner)) {

            v5 = v6 = varg0 != _owner;

        }

        if (!v5) {

            v7 = 1;

            v8 = uint8(owner_5[address(address(v4))]);

            if (!v8) {

                v8 = v9 = uint8(owner_5[address(address(varg0))]);

            }

            if (!v8) {

                v8 = v10 = address(v4) != _uniswapV2Pair;

                if (!bool(address(v4) == _uniswapV2Pair)) {

                    v8 = v11 = varg0 != _uniswapV2Pair;

                }

            }

            if (!v8) {

                v12 = address(v4) == _uniswapV2Pair;

                if (v12) {

                    v12 = v13 = varg0 != _uniswapV2Router;

                }

                if (v12) {

                    stor_d = stor_8;

                    _transfer = stor_9;

                }

                v14 = varg0 == _uniswapV2Pair;

                if (v14) {

                    v14 = v15 = address(v4) != _uniswapV2Router;

                }

                if (v14) {

                    stor_d = stor_a;

                    _transfer = stor_b;

                }

            } else {

                v7 = v16 = 0;

            }

            if (!v7) {

                0x220d();

            }

        } else {

            if (!stor_15_20_20) {

                require(address(v4) == _owner, Error('TOKEN: This account cannot send tokens until trading is enabled'));

            }

            require(varg1 <= __maxTxAmount, Error('TOKEN: Max Transaction Limit'));

            if (varg0 == _uniswapV2Pair) {

                v0 = v17 = 6314;

                v0 = v18 = this;

                goto 0x96b0x537;

            } else {

                v0 = v19 = __maxWalletSize;

                v0 = v20 = 6228;

            }

            v0 = v21 = 0x1e86(_balanceOf[address(v0)]);

            while (1) {

                goto {'0x271e0x537', '0x27480x537', '0x9b50x537'};

            }

            v0 = v22 = 0;

            v23 = 0x2811(v0, v0);

            v0 = 0x2198(100, v23);

            if (0xa2a957bb == v0) {

                setFee(uint256,uint256,uint256,uint256);

            } else if (0xa9059cbb == v0) {

                transfer(address,uint256);

            } else {

                require(0xc3c8cd80 == v0);

                manualswap();

            }

            while (1) {

                v24 = _SafeSub(v0, v0);

                v0 = _SafeSub(v0, v24);

                while (1) {

                    goto {'0x271e0x537', '0x27710x537', '0x27480x537'};

                }

            }

        }

    }

    revert();

}
