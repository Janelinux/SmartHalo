    function mint(uint256 amount, uint256 maxAmount, bytes32[] calldata proof) public payable{
        require(maxAmount >= 1, "Amount must be >= 1");
        require(MerkleProof.verify(proof, root, keccak256(abi.encodePacked(msg.sender, maxAmount))), "Invalid merkle proof");
        require(claimedNFTs[msg.sender] + amount <= maxAmount, "Wallet already claimed");
        require(msg.value >= mintTokenPriceHolders * amount, "Not enough eth");

        ERC1155PresetMinterPauser token = ERC1155PresetMinterPauser(editionsByDennisSchmelz);
        token.mint(msg.sender, mintTokenId, amount, "");
        
        claimedNFTs[msg.sender] += amount;
    }
