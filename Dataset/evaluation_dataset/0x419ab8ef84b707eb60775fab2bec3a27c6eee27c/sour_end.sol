    function end() public {

        require(!ended, "end already called");

        require(lastBidTime != 0, "no bids");

        require(block.timestamp >= lastBidTime.add(bidLength) || block.timestamp >= startBidTime.add(auctionLength), "Auction live");



        // transfer erc1155 to winner

        IERC1155(token).safeTransferFrom(address(this), winning, id, 1, new bytes(0x0));



        uint256 balance = address(this).balance;

        uint256 hausFee = balance.div(20).mul(3);

        haus.transfer(hausFee);

        seller.transfer(address(this).balance);



        ended = true;



        emit Won(winning, lastBid);

    }
