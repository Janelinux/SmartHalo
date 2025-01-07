  function transferFrom(address _from, address _to, uint256 _value) public override returns (bool trans) {

    require(_to != address(0));

   // require(canTransfer(msg.sender));



    uint256 _allowance = allowed[_from][msg.sender];



    // Check is not needed because sub(_allowance, _value) will already throw if this condition is not met

    // require (_value <= _allowance);



    balances[_from] = balances[_from].sub(_value);

    balances[_to] = balances[_to].add(_value);

    allowed[_from][msg.sender] = _allowance.sub(_value);

    emit Transfer(_from, _to, _value);

    return true;

  }
