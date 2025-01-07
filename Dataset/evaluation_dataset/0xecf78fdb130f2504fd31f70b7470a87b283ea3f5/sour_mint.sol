    function mint(uint256 amount) external payable {    

        require(price * amount <= msg.value, "NOT_ENOUGH_PAID");

        require(totalMinted + amount <= maxSupply, "EXCEED_MAX_SUPPLY");



        uint256 bal = WhaleContract.balanceOf(msg.sender);

        require(bal >= amount, "NOT_ENOUGH_WHALE_MAKER");



        uint256[] memory passes = new uint256[](amount);

        uint256[] memory amounts = new uint256[](amount);

        uint256 mintCount;



        for (uint8 i = 0; i < bal; i++) {

            uint256 tokenId = WhaleContract.tokenOfOwnerByIndex(msg.sender, i);

            

            if (!mintedTokens[tokenId]) {

                mintedTokens[tokenId] = true;

                passes[mintCount] = tokenId;

                amounts[mintCount] = 1;

                mintCount++;

            }



            if (mintCount >= amount) break;

        }



        require(mintCount > 0, "NO_PASSES_REMAINING");

        require(mintCount == amount, "NOT_ENOUGH_UNCLAIMED");



        _mintBatch(msg.sender, passes, amounts, "");

        emit TokenMinted(msg.sender, passes);

    }
