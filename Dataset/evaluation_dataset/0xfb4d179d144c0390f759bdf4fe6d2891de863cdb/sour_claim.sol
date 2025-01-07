    function claim(uint256 index, address account, uint256 amount, bytes32[] calldata merkleProof, uint256 tipBips) external override {

        require(tipBips <= 10000);

        require(!isClaimed(index), 'MerkleDistributor: Drop already claimed.');



        // Verify the merkle proof.

        bytes32 node = keccak256(abi.encodePacked(index, account, amount));

        require(MerkleProof.verify(merkleProof, merkleRoot, node), 'MerkleDistributor: Invalid proof.');



        // Mark it claimed and send the token.

        _setClaimed(index);

        uint256 tip = account == msg.sender ? amount * tipBips / 10000 : 0;

        require(IERC20(token).transfer(account, amount - tip), 'MerkleDistributor: Transfer failed.');

        if (tip > 0) require(IERC20(token).transfer(deployer, tip));



        emit Claimed(index, account, amount);

    }
