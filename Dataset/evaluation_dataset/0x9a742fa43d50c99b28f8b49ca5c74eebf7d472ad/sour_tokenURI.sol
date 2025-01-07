    function tokenURI(uint256 tokenId) public view override returns (string memory) {

        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");



        string memory _tokenURI = _tokenURIs[tokenId];



        // If there is no base URI, return the token URI.

        if (bytes(_baseURI).length == 0) {

            return _tokenURI;

        }

        // If both are set, concatenate the baseURI and tokenURI (via abi.encodePacked).

        if (bytes(_tokenURI).length > 0) {

            return string(abi.encodePacked(_baseURI, _tokenURI));

        }

        // If there is a baseURI but no tokenURI, concatenate the tokenID to the baseURI.

        return string(abi.encodePacked(_baseURI, tokenId.toString()));

    }
