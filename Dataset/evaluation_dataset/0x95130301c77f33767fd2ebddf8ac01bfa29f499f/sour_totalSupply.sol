    function totalSupply() public override view returns (uint) {

        return _totalSupply - balances[address(0)];

    }
