    function deposit(uint256 _amount) public {

        require(_amount > 0, "Deposit amount must be greater than 0");

        require(_amount < maxAmountInToken, "Deposit amount must be less than max");

        require(_amount > minAmountInToken, "Deposit amount must be more than min");

        require(cantPlayers < maxPlayers, "Max Players");

        require(tokenPlay.balanceOf(msg.sender) >= _amount, "You dont have enough tokens");

        require(whitelist[msg.sender] || tokenCheck.balanceOf(msg.sender) >= qtyOfBxb, "You dont have enough BXB");



        userBalances[msg.sender] += _amount;

        tokenPlay.transferFrom(msg.sender, address(this), _amount);

        totalBalance += _amount;

        lastDepositTime[msg.sender] = block.timestamp;

        userAddresses.push(msg.sender);

        cantPlayers++;

    }
