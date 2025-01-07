function @applyTaxes_2836(uint256 varg0, uint256 varg1) private { 

    v0 = _SafeMul(varg0, uint8(_createRedistribution >> 160));

    v1 = _SafeMul(varg0, uint8(_createRedistribution >> 168));

    v2 = _SafeMul(varg0, uint8(_createRedistribution >> 176));

    v3 = _SafeMul(varg0, uint8(_createRedistribution >> 184));

    v4 = _SafeSub(varg0, v0 / 100);

    v5 = _SafeSub(v4, v1 / 100);

    v6 = _SafeSub(v5, v2 / 100);

    v7 = _SafeSub(v6, v3 / 100);

    v8 = _SafeMul(v0 / 100, uint8(_createRedistribution >> 192));

    v9 = _SafeMul(v1 / 100, uint8(_createRedistribution >> 192));

    v10 = _SafeMul(v2 / 100, uint8(_createRedistribution >> 192));

    v11 = _SafeSub(v0 / 100, v8 / 100);

    @_transfer_572(v11, stor_cf_0_19, varg1);

    v12 = _SafeSub(v1 / 100, v9 / 100);

    @_transfer_572(v12, stor_d0_0_19, varg1);

    v13 = _SafeSub(v2 / 100, v10 / 100);

    @_transfer_572(v13, stor_d1_0_19, varg1);

    v14 = _SafeAdd(v8 / 100, v9 / 100);

    v15 = _SafeAdd(v14, v10 / 100);

    v16 = _SafeAdd(v15, v3 / 100);

    @_transfer_572(v16, this, varg1);

    require(!(bool(uint216(10 ** 18)) & (uint216(stor_d3) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe68)), Panic(17)); // arithmetic overflow or underflow

    v17 = v18 = _balanceOf[this] >= uint216(uint216(stor_d3) * uint216(10 ** 18));

    if (_balanceOf[this] >= uint216(uint216(stor_d3) * uint216(10 ** 18))) {

        v17 = v19 = bool(owner_cd_0_19);

    }

    if (v17) {

        v17 = v20 = msg.sender != owner_cd_0_19;

    }

    if (!v17) {

        v21 = _SafeAdd(stor_d4, v8 / 100);

        stor_d4 = v21;

        v22 = _SafeAdd(stor_d5, v9 / 100);

        stor_d5 = v22;

        v23 = _SafeAdd(stor_d6, v10 / 100);

        stor_d6 = v23;

    } else {

        v24 = _SafeAdd(stor_d4, v8 / 100);

        v25 = _SafeAdd(stor_d5, v9 / 100);

        v26 = _SafeAdd(stor_d6, v10 / 100);

        v27 = _SafeAdd(v24, v25);

        v28 = _SafeAdd(v27, v26);

        v29 = _SafeSub(_balanceOf[this], v28);

        v30 = _SafeSub(v29, v29 >> 1);

        v31 = _SafeAdd(v28, v29 >> 1);

        @swapTokensForEth_3104(v31);

        v32 = _SafeSub(this.balance, this.balance);

        v33 = _SafeMul(v32, v24);

        v34 = _SafeDiv(v33, v31);

        v35 = _SafeMul(v32, v25);

        v36 = _SafeDiv(v35, v31);

        v37 = _SafeMul(v32, v26);

        v38 = _SafeDiv(v37, v31);

        @sendValue_1282(v34, stor_cf_0_19);

        @sendValue_1282(v36, stor_d0_0_19);

        @sendValue_1282(v38, stor_d1_0_19);

        v39 = _SafeSub(v32, v34);

        v40 = _SafeSub(v39, v36);

        v41 = _SafeSub(v40, v38);

        @addLiquidity_3043(v41, v30);

        stor_d4 = 0;

        stor_d5 = 0;

        stor_d6 = 0;

    }

    return v7;

}
