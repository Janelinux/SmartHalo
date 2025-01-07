  function tokenURI(uint256 tokenId)

    public

    view

    virtual

    override

    returns (string memory)

  {

    require(

      _exists(tokenId),

      "ERC721Metadata: URI query for nonexistent token"

    );

    

    if(revealed == false) {

        return notRevealedUri;

    }



    string memory currentBaseURI = _baseURI();

    return bytes(currentBaseURI).length > 0

        ? string(abi.encodePacked(currentBaseURI, tokenId.toString(), ".json"))

        : "";

  }
