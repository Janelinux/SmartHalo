	function unboxV2(uint256 tokenId_) 

		onlyExistedToken(tokenId_) 

		onlyTokenOwner(tokenId_) 

		onlyMysteryBox(tokenId_) 

	public {		

		uint256 randomness_ = getLocalRandomness(tokenId_);

		bytes32 _dna = bytes32(keccak256(abi.encodePacked(tokenId_, randomness_)));

		uint256 _artifacts = 0;



		uint256[] memory randomWords__ = _expand(randomness_, boxTypes.length); 



		uint256[] memory _itemIds = new uint256[](boxTypes.length);

		for(uint256 i = 0; i < boxTypes.length; i++) {

			uint256 _itemId = itemFactory.getRandomItem(

				randomWords__[i],

				boxTypes[i]

			);

			_itemIds[i] = _itemId;

			_artifacts = _addArtifactValue(_artifacts, i * 8, 8, _itemId); // add itemId

		}

		_artifacts = _addArtifactValue(_artifacts, boxTypes.length * 8, 16, itemFactory.getItemInitialLevel(boxTypes, _itemIds)); // add level

		_artifacts = _addArtifactValue(_artifacts, boxTypes.length * 8 + 16, 16, itemFactory.getItemInitialExperience(boxTypes, _itemIds)); // add exeperience



		_requestIds[tokenId_] = uint256(keccak256(abi.encode(tokenId_)));

		_randomWords[tokenId_] = randomWords__;

		nftCore.updateTokenMetaData(tokenId_, _artifacts, _dna);

  }
