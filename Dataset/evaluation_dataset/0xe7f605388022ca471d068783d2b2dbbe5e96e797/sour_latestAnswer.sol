    function latestAnswer() public view returns (uint256) {
        return vault.pricePerShare() * uint256(USDC.latestAnswer()) * 1e4;
    }
