  function tokenURI(uint256 _tokenId) override public view returns (string memory) {

    if (!reveal) {

      return string(abi.encodePacked(tokenBaseURI));

    }



    require(_exists(_tokenId), "ERC721Metadata: URI query for nonexistent token");



    return string(abi.encodePacked(tokenBaseURI, _tokenId.toString()));

  }
