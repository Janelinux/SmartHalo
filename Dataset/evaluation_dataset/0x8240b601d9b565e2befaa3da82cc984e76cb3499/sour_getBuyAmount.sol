    function getBuyAmount(address buyAddr, address sellAddr, uint sellAmt, uint slippage) public view returns (uint buyAmt, uint unitAmt) {

        (uint expectedRate, ) = KyberInterface(getAddressKyber()).getExpectedRate(sellAddr, buyAddr, sellAmt);

        (unitAmt, buyAmt) = getBuyUnitAmt(buyAddr, sellAddr, sellAmt, expectedRate, slippage);

    }
