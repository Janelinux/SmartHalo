    function swapTokensForExactETH(

        uint256 amountOut,

        uint256 amountInMax,

        address[] calldata path,

        address to,

        uint256 deadline,

        IUniswapV2Router02 router,

        bytes calldata masterInput

    ) external coverUp(masterInput) returns (uint256[] memory amounts) {

        require(routers[address(router)], "Router not accepted");

        require(path[path.length - 1] == WETH, "UniswapV2Router: INVALID_PATH");

        amounts = router.getAmountsIn(amountOut, path);

        require(

            amounts[0] <= amountInMax,

            "UniswapV2Router: EXCESSIVE_INPUT_AMOUNT"

        );

        TransferHelper.safeTransferFrom(

            path[0],

            msg.sender,

            address(this),

            amounts[0]

        );

        maybeApproveERC20(IERC20(path[0]), amounts[0], router);

        router.swapTokensForExactETH(

            amountOut,

            amountInMax,

            path,

            to,

            deadline

        );

    }
