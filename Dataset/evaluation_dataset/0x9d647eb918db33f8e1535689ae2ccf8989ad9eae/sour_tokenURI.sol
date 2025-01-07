    function tokenURI(uint256 _tokenId)

		public

		view

		virtual

		override

		returns (string memory)

	{

		require(_exists(_tokenId), "Nonexistent tokenId");

		if (revealed == false) {

			return "https://storage.googleapis.com/zkbayc/images/zkbayc_default.jpg";

		}

		return string(abi.encodePacked(_baseTokenURI, _toString(_tokenId), ".json"));

	}
