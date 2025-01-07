    function mintToMultipleERC20AL(address _to, uint256 _amount, bytes32[] calldata _merkleProof, address _erc20TokenContract) public payable {
      require(onlyAllowlistMode == true && mintingOpen == true, "Allowlist minting is closed");
      require(isAllowlisted(_to, _merkleProof), "Address is not in Allowlist!");
      require(_amount >= 1, "Must mint at least 1 token");
      require(_amount <= maxBatchSize, "Cannot mint more than max mint per transaction");
      require(canMintAmount(_to, _amount), "Wallet address is over the maximum allowed mints");
      require(currentTokenId() + _amount <= collectionSize, "Cannot mint over supply cap of 1000");
      require(allowlistDropTimePassed() == true, "Allowlist drop time has not passed!");
    
      // ERC-20 Specific pre-flight checks
      require(isApprovedForERC20Payments(_erc20TokenContract), "ERC-20 Token is not approved for minting!");
      uint256 tokensQtyToTransfer = chargeAmountForERC20(_erc20TokenContract) * _amount;
      IERC20 payableToken = IERC20(_erc20TokenContract);
    
      require(payableToken.balanceOf(_to) >= tokensQtyToTransfer, "Buyer does not own enough of token to complete purchase");
      require(payableToken.allowance(_to, address(this)) >= tokensQtyToTransfer, "Buyer did not approve enough of ERC-20 token to complete purchase");
      require(hasSurcharge(), "Fee for ERC-20 payment not provided!");
      
      bool transferComplete = payableToken.transferFrom(_to, address(this), tokensQtyToTransfer);
      require(transferComplete, "ERC-20 token was unable to be transferred");
      
      _safeMint(_to, _amount, false);
      addSurcharge();
    }
