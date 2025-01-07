function tokenURI(uint256 tokenId) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = @_exists_2535(tokenId);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    if (!_oopsy[tokenId]) {

        if (_utilipee) {

            v1 = @_baseURI_3843();

            if (0 - v1.length) {

                v2 = @toString_84(tokenId);

                v3 = v4 = 0;

                while (v3 < v1.length) {

                    MEM[v3 + (32 + MEM[64])] = v1[v3];

                    v3 += 32;

                }

                if (v3 > v1.length) {

                    MEM[v1.length + (32 + MEM[64])] = 0;

                }

                v5 = v6 = 0;

                while (v5 < v2.length) {

                    MEM[v5 + (32 + MEM[64] + v1.length)] = v2[v5];

                    v5 += 32;

                }

                if (v5 > v2.length) {

                    MEM[v2.length + (32 + MEM[64] + v1.length)] = 0;

                }

                v7 = v2.length + (32 + MEM[64] + v1.length);

            } else {

                v8 = v9 = MEM[64];

                MEM[v9] = 0;

            }

        } else {

            v10 = @_baseURI_3843();

            if (v10.length > 0) {

                v11 = @toString_84(_frizewitdat[tokenId]);

                v12 = @toString_84(_sLOPstufs[tokenId]);

                v13 = @toString_84(_mEEEEEET[tokenId]);

                v14 = @toString_84(_mellteeGUDnesses[tokenId]);

                v15 = @toString_84(_stufonnaTOP[tokenId]);

                v16 = @toString_84(_grippeebits[tokenId]);

                v17 = v18 = 0;

                while (v17 < v10.length) {

                    MEM[v17 + (32 + MEM[64])] = v10[v17];

                    v17 += 32;

                }

                if (v17 > v10.length) {

                    MEM[v10.length + (32 + MEM[64])] = 0;

                }

                v19 = v20 = 0;

                while (v19 < v11.length) {

                    MEM[v19 + (32 + MEM[64] + v10.length)] = v11[v19];

                    v19 += 32;

                }

                if (v19 > v11.length) {

                    MEM[v11.length + (32 + MEM[64] + v10.length)] = 0;

                }

                MEM[32 + MEM[64] + v10.length + v11.length] = 0x2d00000000000000000000000000000000000000000000000000000000000000;

                v21 = v22 = 0;

                while (v21 < v12.length) {

                    MEM[v21 + (32 + MEM[64] + v10.length + v11.length + 1)] = v12[v21];

                    v21 += 32;

                }

                if (v21 > v12.length) {

                    MEM[v12.length + (32 + MEM[64] + v10.length + v11.length + 1)] = 0;

                }

                MEM[32 + MEM[64] + v10.length + v11.length + v12.length + 1] = 0x2d00000000000000000000000000000000000000000000000000000000000000;

                v23 = v24 = 0;

                while (v23 < v13.length) {

                    MEM[v23 + (32 + MEM[64] + v10.length + v11.length + v12.length + 2)] = v13[v23];

                    v23 += 32;

                }

                if (v23 > v13.length) {

                    MEM[v13.length + (32 + MEM[64] + v10.length + v11.length + v12.length + 2)] = 0;

                }

                MEM[32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + 2] = 0x2d00000000000000000000000000000000000000000000000000000000000000;

                v25 = v26 = 0;

                while (v25 < v14.length) {

                    MEM[v25 + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + 3)] = v14[v25];

                    v25 += 32;

                }

                if (v25 > v14.length) {

                    MEM[v14.length + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + 3)] = 0;

                }

                MEM[32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length + 3] = 0x2d00000000000000000000000000000000000000000000000000000000000000;

                v27 = v28 = 0;

                while (v27 < v15.length) {

                    MEM[v27 + (4 + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length))] = v15[v27];

                    v27 += 32;

                }

                if (v27 > v15.length) {

                    MEM[v15.length + (4 + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length))] = 0;

                }

                MEM[32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length + 1 + v15.length + 3] = 0x2d00000000000000000000000000000000000000000000000000000000000000;

                v29 = v30 = 0;

                while (v29 < v16.length) {

                    MEM[v29 + (1 + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length + 1 + v15.length + 3))] = v16[v29];

                    v29 += 32;

                }

                if (v29 > v16.length) {

                    MEM[v16.length + (1 + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length + 1 + v15.length + 3))] = 0;

                }

                v7 = v31 = v16.length + (1 + (32 + MEM[64] + v10.length + v11.length + v12.length + v13.length + v14.length + 1 + v15.length + 3));

                // Unknown jump to Block 0x1b32B0x8a2. Refer to 3-address code (TAC);

            } else {

                v8 = v32 = MEM[64];

                MEM[v32] = 0;

            }

        }

        v8 = v33 = MEM[64];

        MEM[v33] = v7 - v33 - 32;

        MEM[64] = v7;

    } else {

        v34 = @_baseURI_3843();

        if (0 - v34.length) {

            v35 = @toString_84(_oopsies[tokenId]);

            v36 = v37 = 0;

            while (v36 < v34.length) {

                MEM[v36 + (32 + MEM[64])] = v34[v36];

                v36 += 32;

            }

            if (v36 > v34.length) {

                MEM[v34.length + (32 + MEM[64])] = 0;

            }

            v38 = v39 = 0;

            while (v38 < v35.length) {

                MEM[v38 + (32 + MEM[64] + v34.length)] = v35[v38];

                v38 += 32;

            }

            if (v38 > v35.length) {

                MEM[v35.length + (32 + MEM[64] + v34.length)] = 0;

            }

            v8 = v40 = MEM[64];

            MEM[v40] = v35.length + (32 + MEM[64] + v34.length) - v40 - 32;

            MEM[64] = v35.length + (32 + MEM[64] + v34.length);

        } else {

            v8 = v41 = MEM[64];

            MEM[v41] = 0;

        }

    }

    v42 = new uint256[](MEM[?]);

    v43 = v44 = 0;

    while (v43 < MEM[?]) {

        MEM[v43 + v42.data] = MEM[v43 + (v45 + 32)];

        v43 += 32;

    }

    if (v43 > MEM[?]) {

        MEM[MEM[?] + v42.data] = 0;

    }

    return v42;

}
