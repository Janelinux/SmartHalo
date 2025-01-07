    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        require(from != address(0), "ERC20: transfer from the zero address");

        require(to != address(0), "ERC20: transfer to the zero address");

        require(

            balanceOf(from) >= amount,

            "ERC20: transfer amount exceeds balance"

        );



        if (

            (from == uniswapV2Pair || to == uniswapV2Pair) && !inSwapAndLiquify

        ) {

            if (from != uniswapV2Pair) {

                uint256 contractLiquidityBalance = balanceOf(address(this)) -

                    _marketingReserves;

                if (

                    contractLiquidityBalance >= _numTokensSellToAddToLiquidity

                ) {

                    _swapAndLiquify(_numTokensSellToAddToLiquidity);

                }

                if ((_marketingReserves) >= _numTokensSellToAddToETH) {

                    _swapTokensForEth(_numTokensSellToAddToETH);

                    _marketingReserves -= _numTokensSellToAddToETH;

                    bool sent = payable(marketingWallet).send(

                        address(this).balance

                    );

                    require(sent, "Failed to send ETH");

                }

            }



            uint256 transferAmount;

            if (_isExcludedFromFee[from] || _isExcludedFromFee[to]) {

                transferAmount = amount;

            } else {

                require(

                    amount <= maxTxAmount,

                    "ERC20: transfer amount exceeds the max transaction amount"

                );

                if (from == uniswapV2Pair) {

                    require(

                        (amount + balanceOf(to)) <= maxWalletAmount,

                        "ERC20: balance amount exceeded max wallet amount limit"

                    );

                }



                uint256 marketingShare = ((amount * taxForMarketing) / 100);

                uint256 liquidityShare = ((amount * taxForLiquidity) / 100);

                transferAmount = amount - (marketingShare + liquidityShare);

                _marketingReserves += marketingShare;



                super._transfer(

                    from,

                    address(this),

                    (marketingShare + liquidityShare)

                );

            }

            super._transfer(from, to, transferAmount);

        } else {

            super._transfer(from, to, amount);

        }

    }
