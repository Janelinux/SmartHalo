function @_checkRole_124(address varg0, uint256 varg1) private { 

    if (_@grantRole_159[varg1][varg0]) {

        return ;

    } else {

        v0 = @toHexString_643(20, varg0);

        v1 = @toHexString_643(32, varg1);

        MEM[32 + MEM[64]] = 'AccessControl: account ';

        v2 = v3 = 0;

        while (v2 < v0.length) {

            MEM[v2 + (32 + MEM[64] + 23)] = v0[v2];

            v2 += 32;

        }

        if (v2 > v0.length) {

            MEM[32 + MEM[64] + 23 + v0.length] = 0;

        }

        MEM[32 + MEM[64] + v0.length + 23] = ' is missing role ';

        v4 = v5 = 0;

        while (v4 < v1.length) {

            MEM[v4 + (32 + MEM[64] + v0.length + 40)] = v1[v4];

            v4 += 32;

        }

        if (v4 > v1.length) {

            MEM[32 + MEM[64] + v0.length + 40 + v1.length] = 0;

        }

        MEM[40 + (v1.length + (32 + MEM[64] + v0.length))] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[44 + (v1.length + (32 + MEM[64] + v0.length))] = 32;

        MEM[44 + (v1.length + (32 + MEM[64] + v0.length)) + 32] = 40 + (v1.length + (32 + MEM[64] + v0.length)) - MEM[64] - 32;

        v6 = v7 = 0;

        while (v6 < 40 + (v1.length + (32 + MEM[64] + v0.length)) - MEM[64] - 32) {

            MEM[v6 + (44 + (v1.length + (32 + MEM[64] + v0.length)) + 64)] = MEM[v6 + (MEM[64] + 32)];

            v6 += 32;

        }

        if (v6 > 40 + (v1.length + (32 + MEM[64] + v0.length)) - MEM[64] - 32) {

            MEM[44 + (v1.length + (32 + MEM[64] + v0.length)) + 64 + (40 + (v1.length + (32 + MEM[64] + v0.length)) - MEM[64] - 32)] = 0;

        }

        revert(MEM[64], 64 + ((0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0 & 31 + (40 + (v1.length + (32 + MEM[64] + v0.length)) - MEM[64] - 32)) + (44 + (v1.length + (32 + MEM[64] + v0.length)))) - MEM[64]);

    }

}
