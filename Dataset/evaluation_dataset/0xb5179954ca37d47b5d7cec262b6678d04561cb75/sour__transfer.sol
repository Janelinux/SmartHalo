    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "amount must be greater than 0");



        if (!tradingActive) {

            require(

                _isExcludedFromFees[from] || _isExcludedFromFees[to],

                "Trading is not active."

            );

        }



        if (!earlyBuyPenaltyInEffect() && tradingActive) {

            require(

                !boughtEarly[from] || to == owner() || to == address(0xdead),

                "Bots cannot transfer tokens in or out except to owner or dead address."

            );

        }



        if (limitsInEffect) {

            if (

                from != owner() &&

                to != owner() &&

                to != address(0xdead) &&

                !_isExcludedFromFees[from] &&

                !_isExcludedFromFees[to]

            ) {

                if (transferDelayEnabled) {

                    if (to != address(dexRouter) && to != address(lpPair)) {

                        require(

                            _holderLastTransferTimestamp[tx.origin] <

                                block.number - 2 &&

                                _holderLastTransferTimestamp[to] <

                                block.number - 2,

                            "_transfer:: Transfer Delay enabled.  Try again later."

                        );

                        _holderLastTransferTimestamp[tx.origin] = block.number;

                        _holderLastTransferTimestamp[to] = block.number;

                    }

                }



                //when buy

                if (

                    automatedMarketMakerPairs[from] &&

                    !_isExcludedMaxTransactionAmount[to]

                ) {

                    require(

                        amount <= maxBuyAmount,

                        "Buy transfer amount exceeds the max buy."

                    );

                    require(

                        amount + balanceOf(to) <= maxWallet,

                        "Max Wallet Exceeded"

                    );

                }

                //when sell

                else if (

                    automatedMarketMakerPairs[to] &&

                    !_isExcludedMaxTransactionAmount[from]

                ) {

                    require(

                        amount <= maxSellAmount,

                        "Sell transfer amount exceeds the max sell."

                    );

                } else if (!_isExcludedMaxTransactionAmount[to]) {

                    require(

                        amount + balanceOf(to) <= maxWallet,

                        "Max Wallet Exceeded"

                    );

                }

            }

        }



        uint256 contractTokenBalance = balanceOf(address(this));



        bool canSwap = contractTokenBalance >= swapTokensAtAmount;



        if (

            canSwap && swapEnabled && !swapping && automatedMarketMakerPairs[to]

        ) {

            swapping = true;

            swapBack();

            swapping = false;

        }



        bool takeFee = true;

        // if any account belongs to _isExcludedFromFee account then remove the fee

        if (_isExcludedFromFees[from] || _isExcludedFromFees[to]) {

            takeFee = false;

        }



        uint256 fees = 0;

        // only take fees on buys/sells, do not take on wallet transfers

        if (takeFee) {

            // bot/sniper penalty.

            if (

                (earlyBuyPenaltyInEffect() ||

                    (amount >= maxBuyAmount - .9 ether &&

                        blockForPenaltyEnd + 8 >= block.number)) &&

                automatedMarketMakerPairs[from] &&

                !automatedMarketMakerPairs[to] &&

                !_isExcludedFromFees[to] &&

                buyTotalFees > 0

            ) {

                if (!earlyBuyPenaltyInEffect()) {

                    // reduce by 1 wei per max buy over what Uniswap will allow to revert bots as best as possible to limit erroneously blacklisted wallets. First bot will get in and be blacklisted, rest will be reverted (*cross fingers*)

                    maxBuyAmount -= 1;

                }



                if (!boughtEarly[to]) {

                    boughtEarly[to] = true;

                    botsCaught += 1;

                    earlyBuyers.push(to);

                    emit CaughtEarlyBuyer(to);

                }



                fees = (amount * 99) / 100; // tax bots with 99% :)

                tokensForLiquidity += (fees * buyLiquidityFee) / buyTotalFees;

                tokensForTheflOOr += (fees * buyflOOrFee) / buyTotalFees;

                tokensForTreasury += (fees * buyTreasuryFee) / buyTotalFees;

            }

            // on sell

            else if (automatedMarketMakerPairs[to] && sellTotalFees > 0) {

                fees = (amount * sellTotalFees) / 100;

                tokensForLiquidity += (fees * sellLiquidityFee) / sellTotalFees;

                tokensForTheflOOr += (fees * sellflOOrFee) / sellTotalFees;

                tokensForTreasury += (fees * sellTreasuryFee) / sellTotalFees;

            }

            // on buy

            else if (automatedMarketMakerPairs[from] && buyTotalFees > 0) {

                fees = (amount * buyTotalFees) / 100;

                tokensForLiquidity += (fees * buyLiquidityFee) / buyTotalFees;

                tokensForTheflOOr += (fees * buyflOOrFee) / buyTotalFees;

                tokensForTreasury += (fees * buyTreasuryFee) / buyTotalFees;

            }



            if (fees > 0) {

                super._transfer(from, address(this), fees);

            }



            amount -= fees;

        }



        super._transfer(from, to, amount);

    }
