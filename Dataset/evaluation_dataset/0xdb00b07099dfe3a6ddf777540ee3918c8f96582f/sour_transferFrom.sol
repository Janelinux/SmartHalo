  function transferFrom(address from, address to, uint256 value) external override returns (bool) {

    require(value <= _balances[from]);

    require(value <= _allowed[from][msg.sender]);

    require(to != address(0));

    if (_checkWhitelist(from)) {

      _balances[from] = _balances[from].sub(value);

      _balances[to] = _balances[to].add(value);

 

      emit Transfer(from, to, value);

      return true;

    } else {

      require (value <= _txCap || _checkWhitelist(to),

              "amount exceeds tx cap");

 

      _balances[from] = _balances[from].sub(value);

 

      uint256 tokensToBurn     = findBurnAmount(burnPct, value);

      uint256 tokensToTransfer = value.sub(tokensToBurn);

 

      _balances[to] = _balances[to].add(tokensToTransfer);

      _totalSupply  = _totalSupply.sub(tokensToBurn);

 

      _allowed[from][msg.sender] = _allowed[from][msg.sender].sub(value);

 

      emit Transfer(from, to, tokensToTransfer);

      emit Transfer(from, address(0), tokensToBurn);

 

      return true;

    }

  }
