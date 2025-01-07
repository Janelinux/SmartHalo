    function removeBridge(address _token)

        external

        onlyGovernor

    {

        string memory assetHash = assetHashes[_token];



        require(bytes(assetHash).length != 0);

        require(erc20Tokens[assetHash] == _token);

        require(bytes(accountsForAssets[assetHash]).length != 0);



        uint bridgeBalance = IERC20(_token).balanceOf(address(this));

        require(bridgeBalance == 0 || bridgeBalance == IERC20(_token).totalSupply());



        delete erc20Tokens[assetHash];

        delete assetHashes[_token];

        delete accountsForAssets[assetHash];

    }
