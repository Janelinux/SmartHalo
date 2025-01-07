    function tokenURI(uint256 tokenId) public view virtual override returns (string memory) {
        require(_exists(tokenId), "ERC721Metadata: URI query for nonexistent token");
        string memory currentBaseURI = _baseURI();
        if (bytes(currentBaseURI).length > 0 && tokenId <= revealedProgress) {
            return string(abi.encodePacked(currentBaseURI, tokenId.toString(), baseExtension)); 
        } else {
            return string(abi.encodePacked(defaultURI, tokenId.toString(), baseExtension)); 
        }
    }
