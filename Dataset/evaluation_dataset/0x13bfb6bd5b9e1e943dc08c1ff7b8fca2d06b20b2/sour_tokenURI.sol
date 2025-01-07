    function tokenURI(uint256 _tokenId) public view override returns (string memory) {

      require(_exists(_tokenId), "ERC721Metadata: URI query for nonexistent token");

      if (!isRevealed) return preRevealURI;

      uint256 finalTokenId = ((_tokenId - 1) + tokenOffset) % totalSupply() + 1;

      return string(abi.encodePacked(baseURI, finalTokenId.toString()));

    }
