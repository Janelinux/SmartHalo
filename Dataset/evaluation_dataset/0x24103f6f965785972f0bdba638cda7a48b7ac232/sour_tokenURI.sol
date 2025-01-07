    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {

        require(_exists(uint16(tokenId)), "URI query for nonexistent token");



        return

            bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenId.toString(), ".json")) : placeholderURI;

    }
