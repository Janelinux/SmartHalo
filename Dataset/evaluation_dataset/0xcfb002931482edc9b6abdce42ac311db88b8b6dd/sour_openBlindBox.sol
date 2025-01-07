  function openBlindBox(
    uint256 blindBoxIndex,
    bytes memory signature,
    uint256[] calldata ids,
    uint256[] calldata amounts
  ) external payable whenNotPaused {
    require(block.timestamp >= releaseTime, "not release");
    require(msg.sender == tx.origin, "No bots");
    require(msg.value == openBlindBoxPrice, "price incorrect");
    require(maxPerWallet == 0 || _walletMints[msg.sender] < maxPerWallet, "exceed max");
    require(blindBoxesOpened[blindBoxIndex] == false, "opened");

    bytes32 messageHash = keccak256(
      abi.encodePacked(address(this), msg.sender, blindBoxIndex, ids, amounts)
    );
    address signer = messageHash.toEthSignedMessageHash().recover(signature);
    console.log(signer, verifier);
    require(signer == verifier, "not verified");

    for (uint256 i = 0; i < ids.length; i++) {
      _genAmount[ids[i]] += amounts[i];
      require(_genAmount[ids[i]] <= preset[ids[i]], "exceed limit amount");
      IDagenItems(dagenItems).mint(msg.sender, ids[i], amounts[i], new bytes(0));
    }

    blindBoxesOpened[blindBoxIndex] = true;
    emit BlindBoxOpened(blindBoxIndex, ids);
    _walletMints[msg.sender] += 1;

    if (msg.value != 0) {
      payable(beneficiary).transfer(msg.value);
    }
  }
