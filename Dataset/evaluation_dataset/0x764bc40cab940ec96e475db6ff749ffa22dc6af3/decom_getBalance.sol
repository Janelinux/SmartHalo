function getBalance(address token, address account) public payable { 

    require(msg.data.length - 4 >= 64);

    if (0xa0246c9032bc3a600820415ae600c6388619a14d != token) {

        if (0x6b175474e89094c44da98b954eedeac495271d0f != token) {

            if (0xe85c8581e60d7cd32bbfd86303d2a4fa6a951dac != token) {

                if (0xc3f7ffb5d5869b3ade9448d094d81b0521e8326f != token) {

                    if (0x5bd997039fff16f653ef15d1428f2c791519f58d != token) {

                        if (0x395e4a17ff11d36dac9959f2d7c8eca10fe89c9 != token) {

                            if (0x514906fc121c7878424a5c928cad1852cc545892 != token) {

                                if (0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2 != token) {

                                    if (0x514910771af9ca656af840dff83e8264ecf986ca != token) {

                                        if (0xbc529c00c6401aef6d220be8c6ea1667f6ad93e != token) {

                                            if (0x6b3595068778dd592e39a122f4f5a5cf09c90fe2 != token) {

                                                if (0x45f24baeef268bb6d63aee5129015d69702bcdfa != token) {

                                                    if (0xa1d0e215a23d7030842fc67ce582a6afa3ccab83 != token) {

                                                        if (0x8207c1ffc5b6804f6024322ccf34f29c3541ae26 != token) {

                                                            if (0xaad22f5543fcdaa694b68f94be177b561836ae57 != token) {

                                                                if (0xe92346d9369fe03b735ed9bdeb6bdc2591b8227e != token) {

                                                                    v0 = v1 = 0;

                                                                } else {

                                                                    v2 = v3 = 0xc6f39cff6797bac5e29275177b6e8e315cf87d95;

                                                                }

                                                            } else {

                                                                v2 = v4 = 0xb3b56c7bdc87f9deb7972cd8b5c09329ce421f89;

                                                            }

                                                        } else {

                                                            v2 = v5 = 0xf71042c88458ff1702c3870f62f4c764712cc9f0;

                                                        }

                                                    } else {

                                                        v2 = v6 = 0xc97ddaa8091abaf79a4910b094830cce5cdd78f4;

                                                    }

                                                } else {

                                                    v2 = v7 = 0x3631a32c959c5c52bc90ab5b7d212a8d00321918;

                                                }

                                            } else {

                                                v2 = v8 = 0x4938960c507a4d7094c53a8cddcf925835393b8f;

                                            }

                                        } else {

                                            v2 = v9 = 0x84646f736795a8bc22ab34e05c8982cd058328c7;

                                        }

                                    } else {

                                        v2 = v10 = 0xa112c2354d27c2fb3370cc5d027b28987117a268;

                                    }

                                } else {

                                    v2 = v11 = 0xe604fd5b1317babd0cf2c72f7f5f2ad8c00adbe1;

                                }

                            } else {

                                v2 = v12 = 0x99b0d6641a63ce173e6eb063b3d3aed9a35cf9bf;

                            }

                        } else {

                            v2 = v13 = 0x6f8a975758436a5ec38d2f9d2336504430465517;

                        }

                    } else {

                        v2 = v14 = 0x5bd997039fff16f653ef15d1428f2c791519f58d;

                    }

                } else {

                    v2 = v15 = 0xe1f9a3ee001a2ecc906e8de637dbf20bb2d44633;

                }

            } else {

                v2 = v16 = 0xf9e5f9024c2f3f2908a1d0e7272861a767c9484b;

            }

        } else {

            v2 = v17 = 0xae024f29c26d6f71ec71658b1980189956b0546d;

        }

        require(bool(v2.code.size));

        v18, v0 = v2.balanceOf(0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, 0x70a0823100000000000000000000000000000000000000000000000000000000, account, account, account, account, account, account, account, account, account, account, account, account, account, account, account).gas(msg.gas);

        require(bool(v18), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    } else {

        require(bool(0xae024f29c26d6f71ec71658b1980189956b0546d.code.size));

        v19, /* uint256 */ v20 = 0xae024f29c26d6f71ec71658b1980189956b0546d.balanceOf(account).gas(msg.gas);

        require(bool(v19), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xf9e5f9024c2f3f2908a1d0e7272861a767c9484b.code.size));

        v21, /* uint256 */ v22 = 0xf9e5f9024c2f3f2908a1d0e7272861a767c9484b.earned(account).gas(msg.gas);

        require(bool(v21), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xe1f9a3ee001a2ecc906e8de637dbf20bb2d44633.code.size));

        v23, /* uint256 */ v24 = 0xe1f9a3ee001a2ecc906e8de637dbf20bb2d44633.earned(account).gas(msg.gas);

        require(bool(v23), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0x5bd997039fff16f653ef15d1428f2c791519f58d.code.size));

        v25, /* uint256 */ v26 = 0x5bd997039fff16f653ef15d1428f2c791519f58d.earned(account).gas(msg.gas);

        require(bool(v25), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0x6f8a975758436a5ec38d2f9d2336504430465517.code.size));

        v27, /* uint256 */ v28 = 0x6f8a975758436a5ec38d2f9d2336504430465517.earned(account).gas(msg.gas);

        require(bool(v27), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0x99b0d6641a63ce173e6eb063b3d3aed9a35cf9bf.code.size));

        v29, /* uint256 */ v30 = 0x99b0d6641a63ce173e6eb063b3d3aed9a35cf9bf.earned(account).gas(msg.gas);

        require(bool(v29), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xe604fd5b1317babd0cf2c72f7f5f2ad8c00adbe1.code.size));

        v31, /* uint256 */ v32 = 0xe604fd5b1317babd0cf2c72f7f5f2ad8c00adbe1.earned(account).gas(msg.gas);

        require(bool(v31), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xa112c2354d27c2fb3370cc5d027b28987117a268.code.size));

        v33, /* uint256 */ v34 = 0xa112c2354d27c2fb3370cc5d027b28987117a268.earned(account).gas(msg.gas);

        require(bool(v33), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0x84646f736795a8bc22ab34e05c8982cd058328c7.code.size));

        v35, /* uint256 */ v36 = 0x84646f736795a8bc22ab34e05c8982cd058328c7.earned(account).gas(msg.gas);

        require(bool(v35), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0x4938960c507a4d7094c53a8cddcf925835393b8f.code.size));

        v37, /* uint256 */ v38 = 0x4938960c507a4d7094c53a8cddcf925835393b8f.earned(account).gas(msg.gas);

        require(bool(v37), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0x3631a32c959c5c52bc90ab5b7d212a8d00321918.code.size));

        v39, /* uint256 */ v40 = 0x3631a32c959c5c52bc90ab5b7d212a8d00321918.earned(account).gas(msg.gas);

        require(bool(v39), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xc97ddaa8091abaf79a4910b094830cce5cdd78f4.code.size));

        v41, /* uint256 */ v42 = 0xc97ddaa8091abaf79a4910b094830cce5cdd78f4.earned(account).gas(msg.gas);

        require(bool(v41), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xf71042c88458ff1702c3870f62f4c764712cc9f0.code.size));

        v43, /* uint256 */ v44 = 0xf71042c88458ff1702c3870f62f4c764712cc9f0.earned(account).gas(msg.gas);

        require(bool(v43), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xb3b56c7bdc87f9deb7972cd8b5c09329ce421f89.code.size));

        v45, /* uint256 */ v46 = 0xb3b56c7bdc87f9deb7972cd8b5c09329ce421f89.earned(account).gas(msg.gas);

        require(bool(v45), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        require(bool(0xc6f39cff6797bac5e29275177b6e8e315cf87d95.code.size));

        v47, /* uint256 */ v48 = 0xc6f39cff6797bac5e29275177b6e8e315cf87d95.earned(account).gas(msg.gas);

        require(bool(v47), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

        v0 = v49 = v48 + (v20 + v22 + v24 + v26 + v28 + v30 + v32 + v34 + v36 + v38 + v40 + v42 + v44 + v46);

    }

    return v0;

}
