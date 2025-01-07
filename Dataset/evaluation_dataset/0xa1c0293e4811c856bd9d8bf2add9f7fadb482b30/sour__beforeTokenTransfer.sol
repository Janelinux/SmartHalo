    function _beforeTokenTransfer(
        address operator,
        address from,
        address to,
        uint256 id,
        uint256[] memory amounts,
        bytes memory data
    ) internal virtual override {
        // We have to call the super function in order to have the total supply correct.
        // It is actually needed by the first two _initialMint calls only. After that, it is
        // a no-op function.
        super._beforeTokenTransfer(operator, from, to, id, amounts, data);

        // this is one of the two first _initialMint calls
        if (from == address(0)) {
            return;
        }

        // This is a buy-back callback from exchange account
        if ((
                from == _exchange1Account ||
                from == _exchange2Account ||
                from == _exchange3Account ||
                from == _exchange4Account ||
                from == _exchange5Account
        ) && to == _treasuryAccount) {
            require(amounts.length == 2 && id == ARTEQ, "arteQTokens: invalid transfer from exchange");
            uint256 profit = (amounts[0] * _profitPercentage) / 100;
            amounts[1] = amounts[0] - profit;
            if (profit > 0) {
                _allTimeProfit += profit;
                emit ProfitTokensCollected(profit);
            }
            return;
        }

        // Ensures that the locked accounts cannot send their ARTEQ tokens
        if (id == ARTEQ) {
            require(_lockedUntilTimestamps[from] == 0 || block.timestamp > _lockedUntilTimestamps[from], "arteQTokens: account cannot send tokens");
        }

        // Realize/Transfer the accumulated profit of 'from' account and make it spendable
        if (from != _adminContract &&
            from != _treasuryAccount &&
            from != _exchange1Account &&
            from != _exchange2Account &&
            from != _exchange3Account &&
            from != _exchange4Account &&
            from != _exchange5Account) {
            _realizeAccountProfitTokens(from);
        }

        // Realize/Transfer the accumulated profit of 'to' account and make it spendable
        if (to != _adminContract &&
            to != _treasuryAccount &&
            to != _exchange1Account &&
            to != _exchange2Account &&
            to != _exchange3Account &&
            to != _exchange4Account &&
            to != _exchange5Account) {
            _realizeAccountProfitTokens(to);
        }
    }
