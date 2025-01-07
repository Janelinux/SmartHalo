	function claim(uint256 _index, address _account, uint256 _amount, bytes32[] memory _proof) external {
		require(!isClaimed(_index), "Claimed already");
		bytes32 node = keccak256(abi.encodePacked(_index, _account, _amount));
		require(_proof.verify(merkleRoot, node), "Wrong proof");
		
		_setClaimed(_index);
		require(token.transfer(_account, _amount), "Token transfer failed");
		emit Claimed(_index, _account, _amount);
	}
