    function getPriceInUsd(address) external view override returns (uint256 _priceInUsd) {
        uint256 _ethPriceInUsd = IOracle(msg.sender).getPriceInUsd(WETH);

        // Note: price oracle gives token1 price in terms of token0 units
        uint256 _frxEthPriceInEth = ETH_FRXETH_CURVE_POOL.price_oracle();

        if (_frxEthPriceInEth > MAX_FRXETH_PRICE) {
            _frxEthPriceInEth = MAX_FRXETH_PRICE;
        }

        return ((SFRXETH.pricePerShare() * _frxEthPriceInEth * _ethPriceInUsd) / (1e36));
    }
