    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        if(from != uniWethPool)

            require(!blacklist[to] && !blacklist[from], 'NGU: the transaction was blocked.');

        

        if(from == uniWethPool && !live)

            blacklist[to] = true;

            

        if (from != owner() && to != owner() && from != uniWethPool && live) {

            uint256 currPrice = getLastPrice();

            if (currPrice < startPrice) {

                require(startPrice.mul(amount).div(currPrice) < 400000e18 || amount < 800e18);

            }

        }



        super._transfer(from, to,  amount);

    }
