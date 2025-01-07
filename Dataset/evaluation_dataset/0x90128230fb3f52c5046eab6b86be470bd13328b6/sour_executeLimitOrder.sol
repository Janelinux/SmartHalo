    function executeLimitOrder(

        address user,

        uint256 nonce,

        ERC20 srcToken,

        uint256 srcQty,

        ERC20 destToken,

        address payable destAddress,

        uint256 minConversionRate,

        uint256 feeInPrecision,

        uint8 v,

        bytes32 r,

        bytes32 s

    )

        onlyOperator

        external

    {

        require(tradeEnabled);



        VerifyParams memory verifyParams;

        verifyParams.user = user;

        verifyParams.concatenatedTokenAddresses = concatTokenAddresses(address(srcToken), address(destToken));

        verifyParams.nonce = nonce;

        verifyParams.hashedParams = keccak256(abi.encodePacked(

            user, nonce, srcToken, srcQty, destToken, destAddress, minConversionRate, feeInPrecision));

        verifyParams.v = v;

        verifyParams.r = r;

        verifyParams.s = s;

        require(verifyTradeParams(verifyParams));



        TradeInput memory tradeInput;

        tradeInput.srcToken = srcToken;

        tradeInput.srcQty = srcQty;

        tradeInput.destToken = destToken;

        tradeInput.destAddress = destAddress;

        tradeInput.minConversionRate = minConversionRate;

        tradeInput.feeInPrecision = feeInPrecision;

        trade(tradeInput, verifyParams);

    }
