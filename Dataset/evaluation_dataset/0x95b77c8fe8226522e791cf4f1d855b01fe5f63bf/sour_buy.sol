    function buy(
        uint8 artId,
        string memory metadataCid
    ) external payable {
        Art storage art = arts[artId];
        art.remainingAmount = art.remainingAmount - 1;
        require(msg.value == art.price, "Sent ether is invalid.");

        uint256 tokenId = ((art.price * 1000 - 3e19) / 1e18) + artId * 10;
        art.price = art.price + 1e15;
        tokenURISuffixes[tokenId] = metadataCid;

        _mint(msg.sender, tokenId);
        emit BuyArt(artId, tokenId, msg.sender);
    }
