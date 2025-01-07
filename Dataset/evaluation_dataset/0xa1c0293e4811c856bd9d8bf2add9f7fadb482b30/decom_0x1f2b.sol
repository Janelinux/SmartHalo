function 0x1f2b(uint256 varg0, uint256 varg1, uint256 varg2, uint256 varg3, uint256 varg4, uint256 varg5) private { 

    if (!address(varg4)) {

        require(0 < MEM[varg1], Panic(50));

        v0 = _SafeAdd(_totalSupply[varg2], MEM[32 + varg1]);

        _totalSupply[varg2] = v0;

    }

    if (!address(varg3)) {

        require(0 < MEM[varg1], Panic(50));

        v1 = _SafeSub(_totalSupply[varg2], MEM[32 + varg1]);

        _totalSupply[varg2] = v1;

    }

    if (address(varg4)) {

        v2 = v3 = _getExchange1Account == address(varg4);

        if (_getExchange1Account != address(varg4)) {

            v2 = v4 = _getExchange2Account == address(varg4);

        }

        if (!v2) {

            v2 = v5 = _getExchange3Account == address(varg4);

        }

        if (!v2) {

            v2 = v6 = _getExchange4Account == address(varg4);

        }

        if (!v2) {

            v2 = v7 = _getExchange5Account == address(varg4);

        }

        if (v2) {

            v2 = v8 = _getTreasuryAccount == address(varg3);

        }

        if (!v2) {

            if (varg2 == 1) {

                v9 = address(varg4);

                v10 = v11 = !map_10[v9];

                if (map_10[v9]) {

                    v12 = address(varg4);

                    v10 = v13 = block.timestamp > map_10[v12];

                }

                if (!v10) {

                    goto 0x2f10x1f2b;

                }

            }

            v14 = _totalCirculatingGovernanceTokens == address(varg4);

            v15 = v16 = _totalCirculatingGovernanceTokens != address(varg4);

            if (_totalCirculatingGovernanceTokens != address(varg4)) {

                v15 = v17 = _getTreasuryAccount != address(varg4);

            }

            if (v15) {

                v15 = v18 = _getExchange1Account != address(varg4);

            }

            if (v15) {

                v15 = v19 = _getExchange2Account != address(varg4);

            }

            if (v15) {

                v15 = v20 = _getExchange3Account != address(varg4);

            }

            if (v15) {

                v15 = v21 = _getExchange4Account != address(varg4);

            }

            if (v15) {

                v15 = v22 = _getExchange5Account != address(varg4);

            }

            if (v15) {

                v23 = v24 = 1;

                v25 = 0x81a(2, varg4);

                if (v25 > 0) {

                    v26 = 0x1a5a(varg4);

                    if (v26) {

                        v27 = address(varg4);

                        v28 = _SafeAdd(map_ada5013122d395ba3c54772283fb069b10426056ef8ca54750cb9bb552a59e7d[v27], v26);

                        map_ada5013122d395ba3c54772283fb069b10426056ef8ca54750cb9bb552a59e7d[v27] = v28;

                        v29 = _SafeAdd(_profitTokensTransferredToAccounts, v26);

                        _profitTokensTransferredToAccounts = v29;

                        v30 = 0x3681(varg4);

                        emit ProfitTokensDistributed(v30, v26);

                    } else {

                        v23 = v31 = 0;

                    }

                }

                if (!v23) {

                    goto 0x2227;

                } else {

                    v32 = address(varg4);

                    map_e[v32] = _allTimeProfit;

                }

            }

            v33 = _totalCirculatingGovernanceTokens == address(varg3);

            v34 = v35 = _totalCirculatingGovernanceTokens != address(varg3);

            if (_totalCirculatingGovernanceTokens != address(varg3)) {

                v34 = v36 = _getTreasuryAccount != address(varg3);

            }

            if (v34) {

                v34 = v37 = _getExchange1Account != address(varg3);

            }

            if (v34) {

                v34 = v38 = _getExchange2Account != address(varg3);

            }

            if (v34) {

                v34 = v39 = _getExchange3Account != address(varg3);

            }

            if (v34) {

                v34 = v40 = _getExchange4Account != address(varg3);

            }

            if (v34) {

                v34 = v41 = _getExchange5Account != address(varg3);

            }

            if (v34) {

                v42 = v43 = 1;

                v44 = 0x81a(2, varg3);

                if (v44 > 0) {

                    v45 = 0x1a5a(varg3);

                    if (v45) {

                        v46 = address(varg3);

                        v47 = _SafeAdd(map_ada5013122d395ba3c54772283fb069b10426056ef8ca54750cb9bb552a59e7d[v46], v45);

                        map_ada5013122d395ba3c54772283fb069b10426056ef8ca54750cb9bb552a59e7d[v46] = v47;

                        v48 = _SafeAdd(_profitTokensTransferredToAccounts, v45);

                        _profitTokensTransferredToAccounts = v48;

                        v49 = 0x3681(varg3);

                        emit ProfitTokensDistributed(v49, v45);

                    } else {

                        v42 = v50 = 0;

                    }

                }

                if (!v42) {

                    return varg0, varg1, varg2, varg3, varg4, varg5;

                } else {

                    v51 = address(varg3);

                    map_e[v51] = _allTimeProfit;

                    return varg0, varg1, varg2, varg3, varg4, varg5;

                }

            }

        } else {

            v52 = v53 = 2 == MEM[varg1];

            if (v53) {

                v52 = v54 = varg2 == 1;

            }

            if (v52) {

                require(0 < MEM[varg1], Panic(50));

                v55 = _SafeMul(MEM[32 + varg1], _getProfitPercentage);

                v56 = _SafeDiv(v55, 100);

                require(0 < MEM[varg1], Panic(50));

                v57 = _SafeSub(MEM[32 + varg1], v56);

                require(1 < MEM[varg1], Panic(50));

                MEM[32 + varg1 + 32] = v57;

                if (v56) {

                    v58 = _SafeAdd(_allTimeProfit, v56);

                    _allTimeProfit = v58;

                    emit ProfitTokensCollected(v56);

                }

            }

        }

        revert(Error('arteQTokens: account cannot send tokens'));

    }

    return ;

}
