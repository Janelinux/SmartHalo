    function _updateBalance(address who, uint256 newBalance) internal {

        require(_nextHolders[who] != address(0), "Invalid address (update balance)");

        address prevHolder = _findPrevHolder(who);

        address nextHolder = _nextHolders[who];



        if(_verifyIndex(prevHolder, newBalance, nextHolder)){

            _balances[who] = newBalance;

        } else {

            removeHolder(who);

            addHolder(who, newBalance);

        }

    }
