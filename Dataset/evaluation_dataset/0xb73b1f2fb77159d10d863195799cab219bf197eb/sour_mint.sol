    function mint(uint256[] memory amount, address[] memory to) external payable {

        require(mintStatus, "Public Mint has not started");

        if(to.length <= 1) {

            if(!signs.getSigns(_msgSender(), 2)) {

                require(msg.value == MINT_PRICE * amount[0], "Invalid Ether amount sent");

            }

            if(giveStatus) amount[0] += uint256(amount[0] / 5);

        } else {

            require(signs.getSigns(_msgSender(), 3), "Public Mint has not started");

        }

        for(uint256 i = 0; i < to.length; i++) {

            to.length <= 1 ? _safeMint(amount[0], to[i], _msgSender(), owner()) : _safeMint(amount[i], to[i], address(0), owner());   

        }

    }
