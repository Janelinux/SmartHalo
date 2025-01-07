    function claimAll(address[] memory _lp, address[] memory _adapter)

        public

    {

        require(_lp.length <= max, "Claimable#claimAll: incorrect length");

        require(_lp.length == _adapter.length, "Claimable#claimAll: incorrect len");

        for (uint256 i = 0; i < _lp.length; i++) {

            claim(_lp[i], _adapter[i]);

        }

    }
