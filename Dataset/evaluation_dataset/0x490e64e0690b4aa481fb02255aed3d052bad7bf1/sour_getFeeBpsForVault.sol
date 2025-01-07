    function getFeeBpsForVault(address _vaultProxy) public view returns (uint256 feeBps_) {
        feeBps_ = getFeeBpsOverrideForVault(_vaultProxy);

        if (feeBps_ == 0) {
            feeBps_ = getFeeBpsDefault();
        }

        return feeBps_;
    }
