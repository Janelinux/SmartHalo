    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {

        require(_exists(tokenId), "ERC721URIStorage: URI query for nonexistent token");



        string memory _tokenURI = _tokenURIs[tokenId];

        string memory base = _baseURI();



        // If there is no base URI, return the token URI.

        if (bytes(base).length == 0) {

            return _tokenURI;

        }

        // If both are set, concatenate the baseURI and tokenURI (via abi.encodePacked).

        if (bytes(_tokenURI).length > 0) {

            return string(abi.encodePacked(base, _tokenURI));

        }



        return super.tokenURI(tokenId);

    }
