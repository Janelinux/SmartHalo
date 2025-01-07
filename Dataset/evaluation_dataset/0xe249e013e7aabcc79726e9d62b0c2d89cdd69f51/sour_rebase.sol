    function rebase(uint256 profit_, uint256 epoch_) external override onlyStakingContract returns (uint256) {

        uint256 rebaseAmount;

        uint256 circulatingSupply_ = circulatingSupply();



        if (profit_ == 0) {

            emit LogSupply(epoch_, block.timestamp, _totalSupply);

            emit LogRebase(epoch_, 0, index());

            return _totalSupply;

        } else if (circulatingSupply_ > 0) {

            rebaseAmount = profit_.mul(_totalSupply).div(circulatingSupply_);

        } else {

            rebaseAmount = profit_;

        }



        _totalSupply = _totalSupply.add(rebaseAmount);



        if (_totalSupply > MAX_SUPPLY) {

            _totalSupply = MAX_SUPPLY;

        }



        _gonsPerFragment = TOTAL_GONS.div(_totalSupply);



        _storeRebase(circulatingSupply_, profit_, epoch_);



        return _totalSupply;

    }
