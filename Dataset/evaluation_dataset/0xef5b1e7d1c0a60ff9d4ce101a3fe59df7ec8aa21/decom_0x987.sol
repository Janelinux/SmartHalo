function 0x987(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    if (address(varg2)) {

        if (address(varg1)) {

            if (_balanceOf[address(varg2)] >= varg0) {

                v0 = v1 = address(varg2) == address(0xe0b2f511d097a634f9b1a10bee6495def8130346);

                if (address(varg2) != address(0xe0b2f511d097a634f9b1a10bee6495def8130346)) {

                    v0 = v2 = address(varg1) == address(0xe0b2f511d097a634f9b1a10bee6495def8130346);

                }

                if (v0) {

                    v0 = v3 = !stor_13_0_0;

                }

                if (!v0) {

                    0x10f9(varg0, varg1, varg2);

                    return ;

                } else {

                    if (address(varg2) != address(0xe0b2f511d097a634f9b1a10bee6495def8130346)) {

                        v4 = _SafeSub(_balanceOf[this], stor_f);

                        if (v4 >= stor_11) {

                            stor_13_0_0 = 1;

                            require(2, Panic(18)); // division by zero

                            v5 = _SafeSub(stor_11, stor_11 >> 1);

                            0xf17(stor_11 >> 1);

                            v6 = _SafeSub(this.balance, this.balance);

                            stor_13_0_0 = 1;

                            0x7e9(v5, 0x7a250d5630b4cf539739df2c5dacb4c659f2488d, this);

                            v7, v8, v9, v10 = address(0x7a250d5630b4cf539739df2c5dacb4c659f2488d).addLiquidityETH(address(this), v5, 0, 0, _owner, block.timestamp).value(v6).gas(msg.gas);

                            require(bool(v7), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

                            v11 = bytes31(STORAGE[19]);

                            stor_13_0_0 = 0;

                            emit SwapAndLiquify(stor_11 >> 1, v6, v5);

                            v12 = bytes31(STORAGE[19]);

                            stor_13_0_0 = 0;

                        }

                        if (stor_f >= stor_12) {

                            0xf17(stor_12);

                            v13 = _SafeSub(stor_f, stor_12);

                            stor_f = v13;

                            v14 = _marketingWallet.call().value(this.balance).gas(2300 * !this.balance);

                            require(v14, Error('Failed to send ETH'));

                        }

                    }

                    v15 = v16 = uint8(owner_10[address(varg2)]);

                    if (!v16) {

                        v15 = v17 = uint8(owner_10[address(varg1)]);

                    }

                    if (!v15) {

                        require(varg0 <= _maxTxAmount, Error('ERC20: transfer amount exceeds the max transaction amount'));

                        if (!(address(varg2) - address(0xe0b2f511d097a634f9b1a10bee6495def8130346))) {

                            v18 = _SafeAdd(varg0, _balanceOf[address(varg1)]);

                            require(v18 <= _maxWalletAmount, Error('ERC20: balance amount exceeded max wallet amount limit'));

                        }

                        v19 = _SafeMul(varg0, _taxForMarketing);

                        require(100, Panic(18)); // division by zero

                        v20 = _SafeMul(varg0, _taxForLiquidity);

                        require(100, Panic(18)); // division by zero

                        v21 = _SafeAdd(v19 / 100, v20 / 100);

                        varg0 = v22 = _SafeSub(varg0, v21);

                        v23 = _SafeAdd(stor_f, v19 / 100);

                        stor_f = v23;

                        v24 = _SafeAdd(v19 / 100, v20 / 100);

                        0x10f9(v24, this, varg2);

                    }

                    0x10f9(varg0, varg1, varg2);

                    return ;

                }

            } else {

                goto 0x6690x987;

            }

        } else {

            goto 0x6690x987;

        }

    }

    revert(Error(0x8c379a000000000000000000000000000000000000000000000000000000000, 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address', 'ERC20: transfer to the zero address', 'ERC20: transfer amount exceeds balance'));

}
