    function _withdraw(uint256 _amount) internal nonReentrant {
        require(_balances[msg.sender] >= _amount, "Not enough user rewards");
        _totalSupply = _totalSupply - _amount;
        _balances[msg.sender] = _balances[msg.sender] - _amount;
        stakingToken.safeTransfer(msg.sender, _amount);
        emit Transfer(msg.sender, address(0), _amount);
    }
