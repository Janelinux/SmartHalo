    function _transfer(

        address sender,

        address recipient,

        uint256 amount

    ) internal override {

        require(amount > 0, "Transfer amount must be greater than zero");



        if (!exemptFee[sender] && !exemptFee[recipient]) {

            require(tradingEnabled, "Trading not enabled");

        }



        if (sender == pair && !exemptFee[recipient] && !_liquidityMutex) {

            require(

                balanceOf(recipient) + amount <= maxWalletLimit,

                "You are exceeding maxWalletLimit"

            );

        }



        if (

            sender != pair && !exemptFee[recipient] && !exemptFee[sender] && !_liquidityMutex

        ) {

            if (recipient != pair) {

                require(

                    balanceOf(recipient) + amount <= maxWalletLimit,

                    "You are exceeding maxWalletLimit"

                );

            }

        }



        uint256 feeswap;

        uint256 feesum;

        uint256 fee;

        Taxes memory currentTaxes;



        bool useLaunchFee = !exemptFee[sender] &&

            !exemptFee[recipient] &&

            block.number < genesis_block + deadline;



        //set fee to zero if fees in contract are handled or exempted

        if (_liquidityMutex || exemptFee[sender] || exemptFee[recipient])

            fee = 0;



            //calculate fee

        else if (recipient == pair && !useLaunchFee) {

            feeswap =

                sellTaxes.liquidity +

                sellTaxes.marketing +           

                sellTaxes.dev ;

            feesum = feeswap;

            currentTaxes = sellTaxes;

        } else if (!useLaunchFee) {

            feeswap =

                taxes.liquidity +

                taxes.marketing +

                taxes.dev ;

            feesum = feeswap;

            currentTaxes = taxes;

        } else if (useLaunchFee) {

            feeswap = launchtax;

            feesum = launchtax;

        }



        fee = (amount * feesum) / 100;



        //send fees if threshold has been reached

        //don't do this on buys, breaks swap

        if (providingLiquidity && sender != pair) handle_fees(feeswap, currentTaxes);



        //rest to recipient

        super._transfer(sender, recipient, amount - fee);

        if (fee > 0) {

            //send the fee to the contract

            if (feeswap > 0) {

                uint256 feeAmount = (amount * feeswap) / 100;

                super._transfer(sender, address(this), feeAmount);

            }



        }

    }
