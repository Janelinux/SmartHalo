    function withdrawETH() public {
        // wrap the ETH first to prevent payable transfer failures that can occur since transfers always succeed
        uint ethBalance = address(this).balance;
        if (ethBalance > 0) {
            weth.deposit{value : ethBalance}();
            withdrawToken(address(weth));
        }
    }
