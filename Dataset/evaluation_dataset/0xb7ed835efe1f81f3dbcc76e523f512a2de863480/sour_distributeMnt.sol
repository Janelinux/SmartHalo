    function distributeMnt(
        address[] calldata accounts,
        IMToken[] calldata mTokens,
        bool borrowers,
        bool suppliers
    ) external nonReentrant {
        ISupervisor cachedSupervisor = supervisor();
        for (uint256 i = 0; i < mTokens.length; i++) {
            require(cachedSupervisor.isMarketListed(mTokens[i]), ErrorCodes.MARKET_NOT_LISTED);
        }
        for (uint256 i = 0; i < accounts.length; i++) {
            distributeAccountMnt(accounts[i], mTokens, borrowers, suppliers);
        }
    }
