    function tokenURI(uint256 _tokenId) public view virtual override returns (string memory) {

    require(_exists(_tokenId), 'ERC721Metadata: URI query for nonexistent token');



    string memory currentBaseURI = baseURI;

    return bytes(currentBaseURI).length > 0

        ? string(abi.encodePacked(currentBaseURI, _tokenId.toString(), ".json"))

        : '';

  }
