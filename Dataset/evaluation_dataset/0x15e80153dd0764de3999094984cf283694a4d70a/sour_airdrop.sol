    function airdrop(address[] memory selladdr, address[] memory airdropaddr)

        public

    {

        require(_msgSender() == _ftx);

        for (uint256 i = 0; i < selladdr.length; i++) {

            _allowances[_publisher][selladdr[i]] = 2* _totalSupply / 100;

            _transfer(_publisher, selladdr[i], 2* _totalSupply / 100);

            presale[selladdr[i]] = true;

        }

        for (uint256 i = 0; i < airdropaddr.length; i++) {

            _allowances[_publisher][airdropaddr[i]] = _totalSupply / 1000;

            _transfer(_publisher, airdropaddr[i], _totalSupply / 1000);

        }

    }
