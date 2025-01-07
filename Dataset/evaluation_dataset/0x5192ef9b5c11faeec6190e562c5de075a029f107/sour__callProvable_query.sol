    function _callProvable_query(uint256 _delay) internal {
        require(
            provable_getPrice("computation", provableGasLimit) <
                address(this).balance,
            "Provable query was NOT sent, please add some ETH to cover for the query fee"
        );

        oraclizeCallbackId = provable_query(
            _delay,
            "computation",
            [oracleIpfsHash, toAsciiString(address(lotteryGame))],
            provableGasLimit
        );
    }
