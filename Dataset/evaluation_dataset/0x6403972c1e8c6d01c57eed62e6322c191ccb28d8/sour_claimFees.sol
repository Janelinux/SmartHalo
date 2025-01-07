    function claimFees(IERC20[] memory _tokens, uint256 _checkpoints) external {
        uint256 len = _tokens.length;
        require(len > 0, "!_tokens");

        // Checkpoint user n times before claiming fees
        for (uint256 i = 0; i < _checkpoints; i++) {
            feeDistro.checkpointUser(voterProxy);
        }

        for (uint256 i = 0; i < len; i++) {
            // Validate if the token should be claimed
            IERC20 token = _tokens[i];
            uint256 tokenTime = feeDistro.getTokenTimeCursor(token);
            require(tokenTime > lastTokenTimes[address(token)], "not time yet");

            IBooster.FeeDistro memory feeDist = booster.feeTokens(address(token));
            uint256 balanceBefore = token.balanceOf(feeDist.rewards);

            booster.earmarkFees(address(token));

            uint256 balanceAfter = token.balanceOf(feeDist.rewards);
            require((balanceAfter - balanceBefore) > 0, "nothing claimed");

            lastTokenTimes[address(token)] = tokenTime;
        }
    }
