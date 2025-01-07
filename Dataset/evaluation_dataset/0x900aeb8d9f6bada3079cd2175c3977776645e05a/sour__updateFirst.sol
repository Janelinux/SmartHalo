    function _updateFirst() internal {

        (uint112 reserve0, uint112 reserve1,) = lpZoneEth.getReserves();

        require(reserve0 != 0 && reserve1 != 0, 'No liquidity on the pool');



        price0AverageLast = FixedPoint.fraction(reserve1, reserve0);

        price1AverageLast = FixedPoint.fraction(reserve0, reserve1);



        (uint price0Cumulative, uint price1Cumulative, uint32 blockTimestamp) = UniswapV2OracleLibrary.currentCumulativePrices(address(lpZoneEth));

        price0CumulativeLast = price0Cumulative;

        price1CumulativeLast = price1Cumulative;

        blockTimestampLast = blockTimestamp;

    }
