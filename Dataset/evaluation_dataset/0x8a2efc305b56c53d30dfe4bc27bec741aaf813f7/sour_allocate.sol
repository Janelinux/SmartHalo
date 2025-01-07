    function allocate(address[] memory users, uint256[] memory amounts)

        public

        onlyOwner

    {

        require(users.length == amounts.length, "lenthg should be same");

        for (uint256 i = 0; i <= users.length - 1; i++) {

            pendings[users[i]] = pendings[users[i]].add(amounts[i]);

        }

    }
