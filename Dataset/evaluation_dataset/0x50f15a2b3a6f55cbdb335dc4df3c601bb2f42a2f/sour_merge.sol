  function merge(uint256 _from, uint256 _to, string memory _attribute) public {
    // Ensure user owns both tokens
    require(erc721.ownerOf(_from) == msg.sender, "not owner of _from token");
    require(erc721.ownerOf(_to) == msg.sender, "not owner of _to token");

    // Destroy token by sending it to the burn address
    // Will throw if user has not approved Merge contract
    // for moving his tokens
    erc721.transferFrom(msg.sender, burnAddress, _from);

    // Emit event
    emit Merge(
      msg.sender,
      _from,
      _to,
      _attribute
    );
  }
