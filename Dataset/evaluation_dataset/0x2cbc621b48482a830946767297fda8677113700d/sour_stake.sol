    function stake(uint[] calldata tokenIds, uint[] calldata levels, address stakeTo, uint32 _maxTimestamp, bytes calldata _signature) 
        external virtual nonReentrant {
        require(tokenIds.length == levels.length, "E2"); // E2: Input length mismatch
        require(block.timestamp <= _maxTimestamp, "E3"); // E3: Signature expired
        require(_verifySignerSignature(keccak256(
            abi.encode(tokenIds, levels, msg.sender, _maxTimestamp, address(this))), _signature), "E7"); // E7: Invalid signature
        _ensureEOAorERC721Receiver(stakeTo);
        require(stakeTo != address(this), "E4"); // E4: Cannot stake to escrow

        uint totalLevels = 0;
        for (uint i = 0; i < tokenIds.length; i++) {
            {
                uint tokenId = tokenIds[i];
                require(HERO_ERC721.ownerOf(tokenId) == msg.sender, "E5"); // E5: Not your hero
                HERO_ERC721.safeTransferFrom(msg.sender, address(this), tokenId);  
            }
            heroInfo[tokenIds[i]] = HeroInfo(levels[i].toUint16(), stakeTo, 0, 0, 0, 0);
            totalLevels += levels[i];
        }
        // update rewards
        _updateRewardsPerlevel(totalLevels.toUint32(), true);
        _updateUserRewards(stakeTo, totalLevels.toUint32(), true);
    }
