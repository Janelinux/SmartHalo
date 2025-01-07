    function _withdraw(

        address _receiver,

        address _bAsset,

        uint256 _amount,

        uint256 _totalAmount,

        bool _hasTxFee

    ) internal {

        require(_totalAmount > 0, "Must withdraw something");



        IAaveATokenV2 aToken = _getATokenFor(_bAsset);



        if (_hasTxFee) {

            require(_amount == _totalAmount, "Cache inactive for assets with fee");

            _getLendingPool().withdraw(_bAsset, _amount, _receiver);

        } else {

            _getLendingPool().withdraw(_bAsset, _totalAmount, address(this));

            // Send redeemed bAsset to the receiver

            IERC20(_bAsset).safeTransfer(_receiver, _amount);

        }



        emit PlatformWithdrawal(_bAsset, address(aToken), _totalAmount, _amount);

    }
