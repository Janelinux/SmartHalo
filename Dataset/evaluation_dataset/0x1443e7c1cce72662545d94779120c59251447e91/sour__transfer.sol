    function _transfer(

        address from,

        address to,

        uint256 amount

    ) internal override {

        // is the token balance of this contract address over the min number of

        // tokens that we need to initiate a swap + liquidity lock?

        // also, don't get caught in a circular liquidity event.

        // also, don't swap & liquify if sender is uniswap pair.

        if(from != owner()) {

            require(amount <= maxTokensPerTx, "ERC20: transfer amount exceeds limit");

        }

        

        uint256 contractTokenBalance = balanceOf(address(this));

        bool overMinTokenBalance = contractTokenBalance >= minTokensBeforeSwap;

        if (

            overMinTokenBalance &&

            !inSwapAndLiquify &&

            msg.sender != uniswapV2Pair &&

            swapAndLiquifyEnabled

        ) {

            swapAndLiquify(contractTokenBalance);

        }



        // calculate the number of tokens to take as a fee

        uint256 tokensToLock = calculateTokenFee(

            amount,

            feeDecimals,

            feePercentage

        );

        

        // calculate the number of tokens to burn

        uint256 tokensToBurn = calculateTokenFee(

            amount,

            feeDecimals,

            10

        );



        // take the fee and send those tokens to this contract address

        // and then send the remainder of tokens to original recipient

        uint256 tokensToTransfer = amount.sub(tokensToLock).sub(tokensToBurn);



        super._transfer(from, address(this), tokensToLock);

        super._transfer(from, to, tokensToTransfer);

        super._burn(from, tokensToBurn);

    }
