    function withdrawFeesWithBurn() public {

        IERC20 token = IERC20(tokenAddress);

        _balance = token.balanceOf(address(this));

        burnAmount = _balance.mul(500).div(1000);

        require(token.balanceOf(burnAddress) < 9000e18, "Burn cap reached");

        require(token.balanceOf(burnAddress).add(burnAmount) <= 9000e18, "Additional burn will exceed cap");

        token.transfer(burnAddress, burnAmount);

        token.transfer(address(0x856A4619fA7519D53E6F3a94260F55de62B83EEb), _balance.mul(225).div(1000)); // @1AndOnlyPika (45% devfee)

        token.transfer(address(0x68b59573Da735e4e75F8A687908b6f3bEd7CB6fa), _balance.mul(150).div(1000)); // Iron (30% devfee)

        token.transfer(address(0xE35E342cd9F2021518D2cd53068e183FfA69eeb2), _balance.mul(125).div(1000)); // Jared Grey (25% devee)

        totalCollectedSinceStart = totalCollectedSinceStart.add(_balance);

    }
