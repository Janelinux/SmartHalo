    function exchangeEthAndBuyShares(
        address _comptrollerProxy,
        address _denominationAsset,
        uint256 _minSharesQuantity,
        address _exchange,
        address _exchangeApproveTarget,
        bytes calldata _exchangeData,
        uint256 _minInvestmentAmount
    ) external payable returns (uint256 sharesReceived_) {
        // Wrap ETH into WETH
        IWETH(payable(getWethToken())).deposit{value: msg.value}();

        // If denominationAsset is WETH, can just buy shares directly
        if (_denominationAsset == getWethToken()) {
            __approveAssetMaxAsNeeded(getWethToken(), _comptrollerProxy, msg.value);

            return __buyShares(_comptrollerProxy, msg.sender, msg.value, _minSharesQuantity);
        }

        // Exchange ETH to the fund's denomination asset
        __approveAssetMaxAsNeeded(getWethToken(), _exchangeApproveTarget, msg.value);
        (bool success, bytes memory returnData) = _exchange.call(_exchangeData);
        require(success, string(returnData));

        // Confirm the amount received in the exchange is above the min acceptable amount
        uint256 investmentAmount = ERC20(_denominationAsset).balanceOf(address(this));
        require(
            investmentAmount >= _minInvestmentAmount,
            "exchangeAndBuyShares: _minInvestmentAmount not met"
        );

        // Give the ComptrollerProxy max allowance for its denomination asset as necessary
        __approveAssetMaxAsNeeded(_denominationAsset, _comptrollerProxy, investmentAmount);

        // Buy fund shares
        sharesReceived_ = __buyShares(
            _comptrollerProxy,
            msg.sender,
            investmentAmount,
            _minSharesQuantity
        );

        // Unwrap and refund any remaining WETH not used in the exchange
        uint256 remainingWeth = ERC20(getWethToken()).balanceOf(address(this));
        if (remainingWeth > 0) {
            IWETH(payable(getWethToken())).withdraw(remainingWeth);
            (success, returnData) = msg.sender.call{value: remainingWeth}("");
            require(success, string(returnData));
        }

        return sharesReceived_;
    }
