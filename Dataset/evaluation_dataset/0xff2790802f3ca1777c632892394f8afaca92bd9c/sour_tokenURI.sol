  function tokenURI(uint256 _tokenId) public view virtual override returns (string memory) {

      require(_exists(_tokenId), "URI does not exist!");



      if (revealed) {

          return string(abi.encodePacked(_baseURI(), _tokenId.toString(), ".json"));

      } else {

          return hiddenMetadataUri;

      }

  }
