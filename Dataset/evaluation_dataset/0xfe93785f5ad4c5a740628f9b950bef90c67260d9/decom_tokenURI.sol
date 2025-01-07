function tokenURI(uint256 varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    v0 = 0x2119(varg0);

    require(v0, Error('ERC721Metadata: URI query for nonexistent token'));

    v1 = 0x357f(_baseURI.length);

    v2 = new uint256[](v1);

    v3 = v4 = v2.data;

    v5 = 0x357f(_baseURI.length);

    if (v5) {

        if (31 < v5) {

            do {

                MEM[v3] = STORAGE[v6];

                v6 += 1;

                v3 += 32;

            } while (v4 + v5 <= v3);

        } else {

            MEM[v4] = _baseURI.length >> 8 << 8;

        }

    }

    v7 = v8 = v2.length > 0;

    if (v8) {

        v7 = v9 = varg0 <= _revealedProgress;

    }

    if (!v7) {

        v10 = 0x2a80(varg0);

        v11 = 0;

        v12 = _defaultURI.length >> 1;

        if (!(_defaultURI.length & 0x1)) {

            v12 = v13 = v12 & 0x7f;

        }

        require(_defaultURI.length & 0x1 != v12 < 32, Panic(34));

        if (!(_defaultURI.length & 0x1)) {

            MEM[32 + MEM[64]] = _defaultURI.length & ~0xff;

            v11 = v14 = 32 + MEM[64] + v12;

            goto 0x36d2B0x3710B0x1abb;

        } else if (_defaultURI.length & 0x1 == 1) {

            v15 = v16 = 0;

            while (v15 < v12) {

                MEM[v15 + (32 + MEM[64])] = STORAGE[v17];

                v17 += 1;

                v15 += 32;

            }

            v11 = v18 = 32 + MEM[64] + v12;

        }

        v19 = v20 = 0;

        while (v19 < v10.length) {

            MEM[v19 + v11] = v10[v19];

            v19 += 32;

        }

        if (v19 > v10.length) {

            MEM[v10.length + v11] = 0;

            goto 0x37040x3710B0x1abb;

        }

        v21 = 0;

        v22 = _baseExtension.length >> 1;

        if (!(_baseExtension.length & 0x1)) {

            v22 = v23 = v22 & 0x7f;

        }

        require(_baseExtension.length & 0x1 != v22 < 32, Panic(34));

        if (!(_baseExtension.length & 0x1)) {

            MEM[v11 + v10.length] = _baseExtension.length & ~0xff;

            v21 = v24 = v11 + v10.length + v22;

            goto 0x36d2B0x37040x3710B0x1abb;

        } else if (_baseExtension.length & 0x1 == 1) {

            v25 = v26 = 0;

            while (v25 < v22) {

                MEM[v25 + (v11 + v10.length)] = STORAGE[v27];

                v27 += 1;

                v25 += 32;

            }

            v21 = v28 = v11 + v10.length + v22;

        }

        goto 0x1a99;

    } else {

        v29 = 0x2a80(varg0);

        v30 = v31 = 0;

        while (v30 < v2.length) {

            MEM[v30 + (32 + MEM[64])] = v2[v30];

            v30 += 32;

        }

        if (v30 > v2.length) {

            MEM[v2.length + (32 + MEM[64])] = 0;

            goto 0x36f0B0x1a85;

        }

        v32 = v33 = 0;

        while (v32 < v29.length) {

            MEM[v32 + (32 + MEM[64] + v2.length)] = v29[v32];

            v32 += 32;

        }

        if (v32 > v29.length) {

            MEM[v29.length + (32 + MEM[64] + v2.length)] = 0;

            goto 0x37040x36deB0x1a85;

        }

        v21 = v34 = 0;

        v35 = _baseExtension.length >> 1;

        if (!(_baseExtension.length & 0x1)) {

            v35 = v36 = v35 & 0x7f;

        }

        require(_baseExtension.length & 0x1 != v35 < 32, Panic(34));

        if (!(_baseExtension.length & 0x1)) {

            MEM[32 + MEM[64] + v2.length + v29.length] = _baseExtension.length & ~0xff;

            v21 = v37 = 32 + MEM[64] + v2.length + v29.length + v35;

            goto 0x36d2B0x37040x36deB0x1a85;

        } else if (_baseExtension.length & 0x1 == 1) {

            v38 = v39 = 0;

            while (v38 < v35) {

                MEM[v38 + (32 + MEM[64] + v2.length + v29.length)] = STORAGE[v40];

                v40 += 1;

                v38 += 32;

            }

            v21 = v41 = 32 + MEM[64] + v2.length + v29.length + v35;

        }

    }

    v42 = new array[](v43);

    v44 = v45 = 0;

    while (v44 < v43) {

        v42[v44] = MEM[v44 + (MEM[64] + 32)];

        v44 += 32;

    }

    if (v44 > v43) {

        v42[v43] = 0;

        goto 0x2f44B0x2f58B0x4110x929;

    }

    return v42;

}
