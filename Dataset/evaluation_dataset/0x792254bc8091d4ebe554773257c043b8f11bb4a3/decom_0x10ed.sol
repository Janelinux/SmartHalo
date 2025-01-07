function 0x10ed(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = v1 = varg0 >= stor_17;

    v0 = v2 = owner_16 <= _balanceOf[this];

    v0 = v3 = !stor_15_0_0;

    if (!stor_15_0_0) {

        v0 = v4 = stor_13_0_0;

    }

    if (v0) {

        v0 = v5 = stor_a_20_20;

    }

    if (v0) {

        v0 = v6 = !uint8(_isFeeExempt[address(varg2)]);

    }

    if (v0) {

        v0 = v7 = _pair == address(varg1);

    }

    if (v0) {

        v0 = 1;

    }

    if (!v0) {

        return ;

    } else {

        v8 = v9 = 4360;

        varg2 = v10 = owner_16;

        stor_15_0_0 = 1;

        v8 = v11 = owner_d;

        v8 = v12 = owner_c;

        v8 = v13 = 0;

        varg2 = v14 = 4921;

        v8 = v15 = 2;

        varg2 = v16 = 9407;

        varg2 = v17 = 4915;

        v18 = _SafeAdd(owner_b, 1);

        while (1) {

            v18 = _SafeAdd(v18, v8);

            goto {'0x1333', '0x24bf'};

        }

        v19 = _SafeMul(v18, v8);

        v20 = _SafeMul(varg2, owner_b);

        v21 = _SafeDiv(v19, v20);

        v22 = _SafeSub(v21, varg2);

        v23 = new uint256[](2);

        CALLDATACOPY(v23.data, msg.data.length, 64);

        require(0 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v24 = v23.data;

        v23[0] = address(this);

        v25, /* address */ v26 = stor_9_0_19.WETH().gas(msg.gas);

        require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(v26 == address(v26));

        require(1 < v23.length, Panic(50)); // access an out-of-bounds or negative index of bytesN array or slice

        v23[1] = address(v26);

        0x99c(v22, stor_9_0_19, this);

        v27 = new uint256[](v23.length);

        v28 = v29 = v27.data;

        v30 = v31 = v23.data;

        v32 = v33 = 0;

        while (v32 < v23.length) {

            MEM[v28] = address(MEM[v30]);

            v30 += 32;

            v28 += 32;

            v32 += 1;

        }

        require(bool(stor_9_0_19.code.size));

        v34 = stor_9_0_19.swapExactTokensForETHSupportingFeeOnTransferTokens(v22, 0, v27, address(this), block.timestamp, v35, address(this)).gas(msg.gas);

        require(bool(v34), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        v36 = _SafeSub(this.balance, this.balance);

        v37 = _SafeSub(owner_b, v19);

        v38 = _SafeDiv(v37, v36);

        v39 = _SafeMul(v38, owner_b);

        if (v39) {

            0x99c(v21, stor_9_0_19, this);

            v40, v41, v42, v43 = stor_9_0_19.addLiquidityETH(this, v21, 0, 0, 0x739e2dee662088a4c75ca8169197041dc7c220d1, block.timestamp).value(v39).gas(msg.gas);

            require(bool(v40), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

            require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 96);

        }

        v44 = _SafeMul(v38, 2);

        v45 = _SafeMul(v44, owner_c);

        if (v45) {

            v46 = 0x739e2dee662088a4c75ca8169197041dc7c220d1.call().value(v45).gas(2300 * !v45);

            require(bool(v46), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        }

        if (this.balance) {

            v47 = 0x739e2dee662088a4c75ca8169197041dc7c220d1.call().value(this.balance).gas(2300 * !this.balance);

            require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        }

        v48 = bytes31(STORAGE[21]);

        stor_15_0_0 = 0;

        owner_14 = 0;

        return varg2;

    }

}
