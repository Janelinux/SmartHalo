    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");



        if(amount == 0) {

            super._transfer(from, to, 0);

            return;

        }



        bool excludedAccount = _isExcludedFromFees[from] || _isExcludedFromFees[to];



        if (from == uniswapV2Pair && !excludedAccount) {

           uint256 contractBalanceRecepient = balanceOf(to);

            require(contractBalanceRecepient + amount <= maxWalletToken,"Exceeds maximum wallet token amount.");

        }

        

        // if any account belongs to _isExcludedFromFee account then remove the fee

        if(!excludedAccount && (from == uniswapV2Pair || to == uniswapV2Pair)) {

            uint256 fees = amount.mul(marketingFee).div(100);

            super._transfer(from, marketingWallet, fees);

            amount = amount.sub(fees);

        }



        super._transfer(from, to, amount);



    }
