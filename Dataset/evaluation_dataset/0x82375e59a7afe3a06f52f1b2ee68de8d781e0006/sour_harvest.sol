    function harvest() external override onlyAuthorized {

        (address token, uint index) = _getMostPremiumToken();



        _claimRewards(token);



        uint bal = IERC20(token).balanceOf(address(this));

        if (bal > 0) {

            // transfer fee to treasury

            uint fee = bal.mul(performanceFee) / PERFORMANCE_FEE_MAX;

            if (fee > 0) {

                address treasury = IController(controller).treasury();

                require(treasury != address(0), "treasury = zero address");



                IERC20(token).safeTransfer(treasury, fee);

            }



            _depositIntoCurve(token, index);

        }

    }
