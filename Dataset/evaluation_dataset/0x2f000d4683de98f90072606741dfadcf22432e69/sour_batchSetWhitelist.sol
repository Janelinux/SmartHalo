    function batchSetWhitelist(
        address[] memory users,
        bool[] memory _isWhitelisted
    ) external onlyAdmin {
        require(users.length == _isWhitelisted.length, "Length not equal");
        for (uint256 i = 0; i < users.length; i++) {
            setWhitelist(users[i], _isWhitelisted[i]);
        }
    }
