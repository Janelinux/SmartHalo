    function _transfer(

        address from,

        address to,

        uint256 amount

    ) private {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        require(!_isBlacklisted[from] && !_isBlacklisted[to], "This address is blacklisted");



        if(from != owner() && to != owner())

            require(amount <= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");









        if(feesOnSellersAndBuyers) {

            setFees(to);

        }



       

        bool takeFee = true;



       

        if(_isExcludedFromFee[from] || _isExcludedFromFee[to]) {

            takeFee = false;

        }



        _tokenTransfer(from,to,amount,takeFee);

    }
