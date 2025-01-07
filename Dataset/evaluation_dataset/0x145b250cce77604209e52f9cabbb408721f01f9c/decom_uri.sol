function uri(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(_getInfoForType[varg0].field2, Error('invalid type'));

    v0 = new struct(2);

    v1 = v2 = _traitData[varg0].field0.length >> 1;

    if (!(_traitData[varg0].field0.length & 0x1)) {

        v1 = v3 = v2 & 0x7f;

    }

    require(_traitData[varg0].field0.length & 0x1 != v1 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v4 = new bytes[](v1);

    v5 = v6 = v4.data;

    v7 = v8 = _traitData[varg0].field0.length >> 1;

    if (!(_traitData[varg0].field0.length & 0x1)) {

        v7 = v9 = v8 & 0x7f;

    }

    require(_traitData[varg0].field0.length & 0x1 != v7 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (v7) {

        if (31 < v7) {

            v10 = v11 = _traitData[varg0].field0.data;

            do {

                MEM[v5] = STORAGE[v10];

                v10 += 1;

                v5 += 32;

            } while (v6 + v7 <= v5);

        } else {

            MEM[v6] = _traitData[varg0].field0.length >> 8 << 8;

        }

    }

    v0.word0 = v4;

    v12 = v13 = _traitData[varg0].field1.length >> 1;

    if (!(_traitData[varg0].field1.length & 0x1)) {

        v12 = v14 = v13 & 0x7f;

    }

    require(_traitData[varg0].field1.length & 0x1 != v12 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v15 = new bytes[](v12);

    v16 = v17 = v15.data;

    v18 = v19 = _traitData[varg0].field1.length >> 1;

    if (!(_traitData[varg0].field1.length & 0x1)) {

        v18 = v20 = v19 & 0x7f;

    }

    require(_traitData[varg0].field1.length & 0x1 != v18 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (v18) {

        if (31 < v18) {

            v21 = v22 = _traitData[varg0].field1.data;

            do {

                MEM[v16] = STORAGE[v21];

                v21 += 1;

                v16 += 32;

            } while (v17 + v18 <= v16);

        } else {

            MEM[v17] = _traitData[varg0].field1.length >> 8 << 8;

        }

    }

    v0.word1 = v15;

    v23 = new struct(2);

    v24 = v25 = _traitData[varg0].field0.length >> 1;

    if (!(_traitData[varg0].field0.length & 0x1)) {

        v24 = v26 = v25 & 0x7f;

    }

    require(_traitData[varg0].field0.length & 0x1 != v24 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v27 = new bytes[](v24);

    v28 = v29 = v27.data;

    v30 = v31 = _traitData[varg0].field0.length >> 1;

    if (!(_traitData[varg0].field0.length & 0x1)) {

        v30 = v32 = v31 & 0x7f;

    }

    require(_traitData[varg0].field0.length & 0x1 != v30 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (v30) {

        if (31 < v30) {

            v33 = v34 = _traitData[varg0].field0.data;

            do {

                MEM[v28] = STORAGE[v33];

                v33 += 1;

                v28 += 32;

            } while (v29 + v30 <= v28);

        } else {

            MEM[v29] = _traitData[varg0].field0.length >> 8 << 8;

        }

    }

    v23.word0 = v27;

    v35 = v36 = _traitData[varg0].field1.length >> 1;

    if (!(_traitData[varg0].field1.length & 0x1)) {

        v35 = v37 = v36 & 0x7f;

    }

    require(_traitData[varg0].field1.length & 0x1 != v35 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    v38 = new bytes[](v35);

    v39 = v40 = v38.data;

    v41 = v42 = _traitData[varg0].field1.length >> 1;

    if (!(_traitData[varg0].field1.length & 0x1)) {

        v41 = v43 = v42 & 0x7f;

    }

    require(_traitData[varg0].field1.length & 0x1 != v41 < 32, Panic(34)); // access to incorrectly encoded storage byte array

    if (v41) {

        if (31 < v41) {

            v44 = v45 = _traitData[varg0].field1.data;

            do {

                MEM[v39] = STORAGE[v44];

                v44 += 1;

                v39 += 32;

            } while (v40 + v41 <= v39);

        } else {

            MEM[v40] = _traitData[varg0].field1.length >> 8 << 8;

        }

    }

    v23.word1 = v38;

    MEM[32 + MEM[64]] = '<image x="0" y="0" width="64" he';

    MEM[32 + MEM[64] + 32] = 'ight="64" image-rendering="pixel';

    MEM[32 + MEM[64] + 64] = 'ated" preserveAspectRatio="xMidY';

    MEM[32 + MEM[64] + 96] = 'Mid" xlink:href="data:image/png;';

    MEM[32 + MEM[64] + 128] = 'base64,';

    v46 = v47 = 0;

    while (v46 < v48.length) {

        MEM[v46 + (167 + MEM[64])] = v48[v46];

        v46 += 32;

    }

    if (v46 > v48.length) {

        MEM[v48.length + (167 + MEM[64])] = 0;

    }

    MEM[v48.length + (167 + MEM[64])] = 0x222f3e0000000000000000000000000000000000000000000000000000000000;

    MEM[64] = v48.length + (167 + MEM[64]) + 3;

    v49 = v50 = 0;

    while (v49 < v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32) {

        MEM[v49 + (32 + MEM[64])] = MEM[v49 + (MEM[64] + 32)];

        v49 += 32;

    }

    if (v49 > v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32) {

        MEM[v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64])] = 0;

    }

    MEM[32 + MEM[64]] = '<svg id="rawResources" width="10';

    MEM[32 + MEM[64] + 32] = '0%" height="100%" version="1.1" ';

    MEM[32 + MEM[64] + 64] = 'viewBox="0 0 64 64" xmlns="http:';

    MEM[32 + MEM[64] + 96] = '//www.w3.org/2000/svg" xmlns:xli';

    MEM[32 + MEM[64] + 128] = 'nk="http://www.w3.org/1999/xlink';

    MEM[32 + MEM[64] + 160] = 0x223e000000000000000000000000000000000000000000000000000000000000;

    v51 = v52 = 0;

    while (v51 < v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32) {

        MEM[v51 + (194 + MEM[64])] = MEM[v51 + (MEM[64] + 32)];

        v51 += 32;

    }

    if (v51 > v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32) {

        MEM[v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64])] = 0;

    }

    MEM[v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64])] = '</svg>';

    v53 = v54 = MEM[64];

    if (0 != v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32) {

        require(2 <= ~(v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32), Panic(17)); // arithmetic overflow or underflow

        require(3, Panic(18)); // division by zero

        require(!(bool(4) & ((2 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) / 3 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow

        require(32 <= ~((2 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) / 3 << 2), Panic(17)); // arithmetic overflow or underflow

        require(32 + ((2 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) / 3 << 2) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

        v55 = v56 = new bytes[](32 + ((2 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) / 3 << 2));

        if (32 + ((2 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) / 3 << 2)) {

            CALLDATACOPY(v56.data, msg.data.length, 32 + ((2 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) / 3 << 2));

        }

        v57 = v58 = v56.data;

        while (v53 < v54 + (v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32)) {

            v53 += 3;

            MEM[v57] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (0x3f & MEM[v53] >> 18)] << 248;

            MEM[v57 + 1] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (0x3f & MEM[v53] >> 12)] << 248;

            MEM[v57 + 2] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (0x3f & MEM[v53] >> 6)] << 248;

            MEM[v57 + 3] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (MEM[v53] & 0x3f)] << 248;

            v57 += 4;

        }

        if ((v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32) % 3 == 1) {

            MEM[v57 - 2] = 0x3d3d000000000000000000000000000000000000000000000000000000000000;

        } else if ((v48.length + (167 + MEM[64]) + 3 - MEM[64] - 32 + (32 + MEM[64]) - MEM[64] - 32 + (194 + MEM[64]) + 6 - v54 - 32) % 3 == 2) {

            MEM[v57 - 1] = 0x3d00000000000000000000000000000000000000000000000000000000000000;

        }

    } else {

        v55 = v59 = MEM[64];

        MEM[v59] = 0;

    }

    MEM[32 + MEM[64]] = 0x7b226e616d65223a202200000000000000000000000000000000000000000000;

    v60 = v61 = 0;

    while (v60 < v62.length) {

        MEM[v60 + (42 + MEM[64])] = v62[v60];

        v60 += 32;

    }

    if (v60 > v62.length) {

        MEM[v62.length + (42 + MEM[64])] = 0;

    }

    MEM[v62.length + (42 + MEM[64])] = '", "description": "Raw Pytheas r';

    MEM[v62.length + (42 + MEM[64]) + 32] = 'esources - All the metadata and ';

    MEM[v62.length + (42 + MEM[64]) + 64] = 'images are generated and stored ';

    MEM[v62.length + (42 + MEM[64]) + 96] = '100% on-chain. No IPFS. NO API. ';

    MEM[v62.length + (42 + MEM[64]) + 128] = 'Just the Ethereum blockchain.", ';

    MEM[v62.length + (42 + MEM[64]) + 160] = '"image": "data:image/svg+xml;bas';

    MEM[v62.length + (42 + MEM[64]) + 192] = 0x6536342c00000000000000000000000000000000000000000000000000000000;

    v63 = v64 = 0;

    while (v63 < MEM[v55]) {

        MEM[v63 + (196 + (v62.length + (42 + MEM[64])))] = MEM[v63 + (v55 + 32)];

        v63 += 32;

    }

    if (v63 > MEM[v55]) {

        MEM[MEM[v55] + (196 + (v62.length + (42 + MEM[64])))] = 0;

    }

    MEM[MEM[v55] + (196 + (v62.length + (42 + MEM[64])))] = 0x222c202261747472696275746573223a205b5d00000000000000000000000000;

    MEM[MEM[v55] + (196 + (v62.length + (42 + MEM[64]))) + 19] = 0x7d00000000000000000000000000000000000000000000000000000000000000;

    v65 = v66 = MEM[64];

    if (0 != 20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32) {

        require(2 <= ~(20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32), Panic(17)); // arithmetic overflow or underflow

        require(3, Panic(18)); // division by zero

        require(!(bool(4) & ((2 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) / 3 > 0x3fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)), Panic(17)); // arithmetic overflow or underflow

        require(32 <= ~((2 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) / 3 << 2), Panic(17)); // arithmetic overflow or underflow

        require(32 + ((2 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) / 3 << 2) <= uint64.max, Panic(65)); // failed memory allocation (too much memory)

        v67 = v68 = new bytes[](32 + ((2 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) / 3 << 2));

        if (32 + ((2 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) / 3 << 2)) {

            CALLDATACOPY(v68.data, msg.data.length, 32 + ((2 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) / 3 << 2));

        }

        v69 = v70 = v68.data;

        while (v65 < v66 + (20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32)) {

            v65 += 3;

            MEM[v69] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (0x3f & MEM[v65] >> 18)] << 248;

            MEM[v69 + 1] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (0x3f & MEM[v65] >> 12)] << 248;

            MEM[v69 + 2] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (0x3f & MEM[v65] >> 6)] << 248;

            MEM[v69 + 3] = MEM['ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/' + 1 + (MEM[v65] & 0x3f)] << 248;

            v69 += 4;

        }

        if ((20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32) % 3 == 1) {

            MEM[v69 - 2] = 0x3d3d000000000000000000000000000000000000000000000000000000000000;

        } else if ((20 + (MEM[v55] + (196 + (v62.length + (42 + MEM[64])))) - v66 - 32) % 3 == 2) {

            MEM[v69 - 1] = 0x3d00000000000000000000000000000000000000000000000000000000000000;

        }

    } else {

        v67 = v71 = MEM[64];

        MEM[v71] = 0;

    }

    MEM[32 + MEM[64]] = 'data:application/json;base64,';

    v72 = v73 = 0;

    while (v72 < MEM[v67]) {

        MEM[v72 + (61 + MEM[64])] = MEM[v72 + (v67 + 32)];

        v72 += 32;

    }

    if (v72 > MEM[v67]) {

        MEM[MEM[v67] + (61 + MEM[64])] = 0;

    }

    v74 = new uint256[](MEM[v67] + (61 + MEM[64]) - MEM[64] - 32);

    v75 = v76 = 0;

    while (v75 < MEM[v67] + (61 + MEM[64]) - MEM[64] - 32) {

        MEM[v75 + v74.data] = MEM[v75 + (MEM[64] + 32)];

        v75 += 32;

    }

    if (v75 > MEM[v67] + (61 + MEM[64]) - MEM[64] - 32) {

        MEM[MEM[v67] + (61 + MEM[64]) - MEM[64] - 32 + v74.data] = 0;

    }

    return v74;

}
