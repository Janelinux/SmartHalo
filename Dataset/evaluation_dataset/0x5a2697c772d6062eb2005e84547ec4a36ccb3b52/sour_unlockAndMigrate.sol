    function unlockAndMigrate(IMigrationReceiver _newPool, uint256[] calldata _ids, bytes calldata _data) external {
        (address token, uint256 totalRawAmount) = _unlockTokensFor(msg.sender, _ids, address(_newPool));
        _newPool.migrateTokenCallback(token, msg.sender, totalRawAmount, _data);
    }
