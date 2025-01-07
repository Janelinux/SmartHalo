    function gift(address[] calldata to) public {

        require(canGift[msg.sender], "you are not allowed to gift");



        require(to.length > 0, "no recipients");



        for(uint256 i = 0; i < to.length; i++) {

            require(tokenIDCounter.current() < totalSupply, "no more to gift");

            mint(to[i]);

        }

    }
