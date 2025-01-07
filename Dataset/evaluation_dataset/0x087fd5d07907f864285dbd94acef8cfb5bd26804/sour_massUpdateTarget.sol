    function massUpdateTarget(uint256[] memory poolId, ITarget[] memory newTarget, address[] memory newAdapter, uint256[] memory newTargetPoolId, bool[] memory restake) external override onlyOwner {
        for (uint i = 0; i < poolId.length; i++) {
            _updateTargetInfo(poolId[i], newTarget[i], newAdapter[i], newTargetPoolId[i], restake[i]);
        }
    }
