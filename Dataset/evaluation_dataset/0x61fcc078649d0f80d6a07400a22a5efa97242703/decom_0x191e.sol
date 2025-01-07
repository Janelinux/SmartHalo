function 0x191e(uint256 varg0, uint256 varg1, uint256 varg2) private { 

    v0 = 0x1f56(stor_a, varg0);

    v1 = 0x1959(100, v0);

    v2 = 0x1f56(stor_b, varg0);

    v3 = 0x1959(100, v2);

    v4 = new struct(2);

    v4.word0 = 30;

    v5 = v4.data;

    v4.word1 = 'SafeMath: subtraction overflow';

    v6 = _SafeSub(v4, v1, varg0);

    v7 = new struct(2);

    v7.word0 = 30;

    v8 = v7.data;

    v7.word1 = 'SafeMath: subtraction overflow';

    v9 = _SafeSub(v7, v3, v6);

    v10 = 0x192e();

    v11 = 0x1f56(v10, varg0);

    v12 = 0x1f56(v10, v1);

    v13 = 0x1f56(v10, v3);

    v14 = new struct(2);

    v14.word0 = 30;

    v15 = v14.data;

    v14.word1 = 'SafeMath: subtraction overflow';

    v16 = _SafeSub(v14, v12, v11);

    v17 = new struct(2);

    v17.word0 = 30;

    v18 = v17.data;

    v17.word1 = 'SafeMath: subtraction overflow';

    v19 = _SafeSub(v17, v13, v16);

    v20 = address(varg2);

    v21 = new struct(2);

    v21.word0 = 30;

    v22 = v21.data;

    v21.word1 = 'SafeMath: subtraction overflow';

    v23 = _SafeSub(v21, v11, owner_2[v20]);

    v24 = address(varg2);

    owner_2[v24] = v23;

    v25 = address(varg1);

    v26 = _SafeAdd(v19, owner_2[v25]);

    v27 = address(varg1);

    owner_2[v27] = v26;

    v28 = 0x192e();

    v29 = 0x1f56(v28, v3);

    v30 = _SafeAdd(v29, owner_2[address(this)]);

    owner_2[address(this)] = v30;

    v31 = new struct(2);

    v31.word0 = 30;

    v32 = v31.data;

    v31.word1 = 'SafeMath: subtraction overflow';

    v33 = _SafeSub(v31, v12, stor_8);

    stor_8 = v33;

    v34 = _SafeAdd(v1, stor_9);

    stor_9 = v34;

    emit Transfer(address(varg2), address(varg1), v9);

    return ;

}
