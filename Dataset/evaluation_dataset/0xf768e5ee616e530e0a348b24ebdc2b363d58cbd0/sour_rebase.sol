    function rebase(uint256 epoch, uint256 supplyDelta)

        external

        onlyOwner

        returns (uint256)

    {

        if (supplyDelta == 0) {

            emit LogRebase(epoch, _totalSupply);

            return _totalSupply;

        }



         _totalSupply = _totalSupply.sub(supplyDelta);



        

        if (_totalSupply > MAX_SUPPLY) {

            _totalSupply = MAX_SUPPLY;

        }



        _gonsPerFragment = TOTAL_GONS.div(_totalSupply);



        emit LogRebase(epoch, _totalSupply);

        return _totalSupply;

    }
