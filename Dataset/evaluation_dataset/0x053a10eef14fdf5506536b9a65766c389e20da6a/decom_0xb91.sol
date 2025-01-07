function 0xb91(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = v1 = 0;

    require(address(varg2), Error('ERC20: transfer from the zero address'));

    require(address(varg1), Error('ERC20: transfer to the zero address'));

    v2 = v3 = !uint8(_isLiquidityPair[address(varg2)]);

    if (!bool(uint8(_isLiquidityPair[address(varg2)]))) {

        v2 = v4 = !uint8(_isLiquidityPair[address(varg1)]);

    }

    require(v2, Error('Unable to locate corresponding TransferEventLOGS'));

    if (!stor_1d_20_20) {

        v5 = v6 = !uint8(_isTxLimitExempt[address(varg2)]);

        if (!bool(uint8(_isTxLimitExempt[address(varg2)]))) {

            v5 = v7 = !uint8(_isTxLimitExempt[address(varg1)]);

        }

        if (v5) {

            require(varg0 <= __maxTxAmount, Error('Transfer amount exceeds the maxTxAmount.'));

        }

        v0 = v8 = _getCirculatingSupply[this];

        v0 = v9 = v8 >= _minimumTokensBeforeSwapAmount;

        if (v8 >= _minimumTokensBeforeSwapAmount) {

            v0 = v10 = !stor_1d_20_20;

        }

        if (v0) {

            v0 = v11 = !uint8(_isMarketPair[address(varg2)]);

        }

        if (v0) {

            v0 = v12 = _swapAndLiquifyEnabled;

        }

        if (v0) {

            v0 = v13 = 3652;

            stor_1d_20_20 = 1;

            v0 = v14 = __totalDistributionShares;

            v0 = v15 = 0;

            v0 = v16 = 4701;

            v0 = v17 = 2;

            v0 = v18 = 9740;

            v0 = v19 = 0x14e4(__liquidityShare, v8);

            while (1) {

                v0 = _SafeDiv(v0, v0);

            }

            v0 = v20 = _SafeSub('SafeMath: subtraction overflow', v0, v0);

            v21 = new uint256[](2);

            CALLDATACOPY(v21.data, msg.data.length, 64);

            require(0 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v22 = v21.data;

            v21[0] = address(this);

            v23, /* address */ v24 = _uniswapV2Router.WETH().gas(msg.gas);

            require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

            require(v24 == address(v24));

            require(1 < v21.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

            v21[1] = address(v24);

            0xa6d(v20, _uniswapV2Router, this);

            v25 = new uint256[](v21.length);

            v26 = v27 = v25.data;

            v28 = v29 = v21.data;

            v30 = v31 = 0;

            while (v30 < v21.length) {

                MEM[v26] = address(MEM[v28]);

                v26 += 32;

                v28 += 32;

                v30 += 1;

            }

            require(bool(_uniswapV2Router.code.size));

            v32 = _uniswapV2Router.swapExactTokensForETHSupportingFeeOnTransferTokens(v20, 0, v25, address(this), block.timestamp, v33, address(this), 160).gas(msg.gas);

            require(bool(v32), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            v34 = new uint256[](v21.length);

            v35 = v36 = v34.data;

            v37 = v38 = v21.data;

            v39 = v40 = 0;

            while (v39 < v21.length) {

                MEM[v35] = address(MEM[v37]);

                v35 += 32;

                v37 += 32;

                v39 += 1;

            }

            emit SwapTokensForETH(v20, v34, v33, 160, address(this), v33, v33, address(this), 160);

            v0 = v41 = this.balance;

            v42 = _SafeDiv(2, __liquidityShare);

            v0 = v43 = _SafeSub('SafeMath: subtraction overflow', v42, __totalDistributionShares);

            v0 = v44 = 0;

            v0 = v45 = 4792;

            v0 = v46 = 2;

            v0 = v47 = 9777;

            v48 = v49 = 0x14e4(__liquidityShare, v41);

            while (1) {

                v48 = _SafeDiv(v0, v48);

            }

            v50 = 0x14e4(__teamShare, v0);

            v51 = _SafeDiv(v0, v50);

            v52 = _SafeSub('SafeMath: subtraction overflow', v48, v0);

            v53 = _SafeSub(0x536166654d6174683a207375627472616374696f6e206f766572666c6f770000f305d71900000000000000000000000000000000000000000000000000000000, v51, v52);

            if (v53) {

                v54 = _marketingWalletAddress.call().value(v53).gas(2300 * !v53);

                require(bool(v54), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

            if (v51) {

                v55 = stor_4_0_19.call().value(v51).gas(2300 * !v51);

                require(bool(v55), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            }

            v56 = v57 = v48 > 0;

            if (v57) {

                v56 = v58 = v0 > 0;

            }

            if (v56) {

                0xa6d(v0, _uniswapV2Router, this);

                MEM[MEM[64] + 4] = address(this);

                v59, v60, v61, v62 = _uniswapV2Router.addLiquidityETH(address(this), v0, 0, 0, _owner, block.timestamp).value(v48).gas(msg.gas);

                require(bool(v59), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

                require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

            }

            stor_1d_20_20 = 0;

        }

        v63 = address(v0);

        v64 = v65 = !uint8(_isLiquidityPair[v63]);

        if (!bool(uint8(_isLiquidityPair[v63]))) {

            v66 = address(v0);

            v64 = v67 = !uint8(_isLiquidityPair[v66]);

        }

        if (v64) {

            v68 = 0x1362(v0, v0, v0);

            v69 = _SafeDiv(2, __totalDistributionShares);

            v70 = _SafeMul(256, v69);

            v64 = v71 = v70 != v68;

        }

        require(v64);

        v72 = address(v0);

        v73 = v74 = uint8(_isExcludedFromFee[v72]);

        if (!v74) {

            v75 = address(v0);

            v73 = v76 = uint8(_isExcludedFromFee[v75]);

        }

        if (!v73) {

            v0 = v77 = 0x1362(v0, v0, v0);

        }

        v78 = v79 = _checkWalletLimit;

        if (v79) {

            v80 = address(v0);

            v78 = v81 = !uint8(_isWalletLimitExempt[v80]);

        }

        if (v78) {

            v82 = address(v0);

            v83 = _SafeAdd(_getCirculatingSupply[v82], v0);

            require(v83 >= _getCirculatingSupply[v82], Error('SafeMath: addition overflow'));

            require(v83 <= __walletMax);

        }

        v84 = address(v0);

        v85 = 0x10e2(v0, _getCirculatingSupply[v84]);

        v86 = address(v0);

        _getCirculatingSupply[v86] = v85;

        v87 = address(v0);

        v88 = _SafeSub('Insufficient Balance', v0, _getCirculatingSupply[v87]);

        v89 = address(v0);

        _getCirculatingSupply[v89] = v88;

        emit Transfer(v89, address(v0), v0);

        return 1;

    } else {

        v90 = _SafeSub('Insufficient Balance', varg0, _getCirculatingSupply[address(varg2)]);

        _getCirculatingSupply[address(varg2)] = v90;

        v91 = 0x10e2(varg0, _getCirculatingSupply[address(varg1)]);

        _getCirculatingSupply[address(varg1)] = v91;

        emit Transfer(address(varg2), address(varg1), varg0);

        return 1;

    }

}
