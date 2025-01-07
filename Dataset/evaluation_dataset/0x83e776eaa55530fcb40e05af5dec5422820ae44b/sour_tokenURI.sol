	function tokenURI(uint tokenId)

		public

		view

		override

		returns (string memory)

	{

        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");

        return bytes(_baseURL).length > 0 

            ? string(abi.encodePacked(_baseURL, tokenId.toString(), ".json"))

            : "";

	}
