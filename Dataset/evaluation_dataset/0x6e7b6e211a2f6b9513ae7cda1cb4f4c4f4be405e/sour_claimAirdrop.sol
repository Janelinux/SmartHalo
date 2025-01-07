    function claimAirdrop(
        address receiver,
        uint256 amount,
        uint256 nonce,
        bytes memory signature
    ) public nonReentrant whenNotPaused {
        require(!claimed[receiver], "ShinikiAirdrop: receiver is claimed");
        require(
            SIGNATURE_VERIFIER.verifyClaimAirdrop(
                receiver,
                amount,
                nonce,
                signature
            ),
            "ShinikiAirdrop: signature claim airdrop is invalid"
        );
        for (uint64 i = 0; i < amount; i++) {
            if (currentIndex[TYPE_1] < 2907) {
                if (currentIndex[TYPE_1] == 2002) {
                    currentIndex[TYPE_1] = 2003;
                }
                IERC721Upgradeable(tokenShiniki).safeTransferFrom(
                    ownerToken,
                    receiver,
                    currentIndex[TYPE_1]
                );
                currentIndex[TYPE_1] = currentIndex[TYPE_1] + 1;
            } else if (currentIndex[TYPE_2] < 6795){
                if (currentIndex[TYPE_2] == 5661) {
                    currentIndex[TYPE_2] = 5662;
                }
                IERC721Upgradeable(tokenShiniki).safeTransferFrom(
                    ownerToken,
                    receiver,
                    currentIndex[TYPE_2]
                );
                currentIndex[TYPE_2] = currentIndex[TYPE_2] + 1;
            } else {
                revert("ShinikiAirdrop: Amount input exceed");
            }
        }
        claimed[receiver] = true;
    }
