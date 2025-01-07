    function executeSell(bytes memory data, uint256 _tokenId) external {
        // Decode variables passed in data
        OrderTypes.MakerOrder memory saleBid = abi.decode(
            data,
            (OrderTypes.MakerOrder)
        );

        // Setup our taker bid to sell
        OrderTypes.TakerOrder memory saleAsk = OrderTypes.TakerOrder({
            isOrderAsk: true,
            taker: address(this),
            price: saleBid.price,
            tokenId: _tokenId, // user's token id
            minPercentageToAsk: saleBid.minPercentageToAsk,
            params: ""
        });

        // Accept maker ask order and sell NFT
        LOOKSRARE.matchBidWithTakerAsk(saleAsk, saleBid);
    }
