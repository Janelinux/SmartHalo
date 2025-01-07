    function buy(uint256 amount) external payable {

        /// @dev Verifies that user can mint based on the provided parameters.



        require(address(nft) != address(0), "NFT SMART CONTRACT NOT SET");



        require(block.timestamp >= mintStart, "SALE HASN'T STARTED YET");

        require(block.timestamp < mintEnd, "SALE IS CLOSED");

        require(amount > 0, "HAVE TO BUY AT LEAST 1");



        require(

            amount <= nft.maxMintPerTransaction(),

            "CANNOT MINT MORE PER TX"

        );

        require(

            addressToMints[_msgSender()] + amount <= maxMintPerWallet,

            "MINT AMOUNT EXCEEDS MAX FOR USER"

        );

        require(

            minted + amount <= maxSupply,

            "MINT AMOUNT GOES OVER MAX SUPPLY"

        );

        require(msg.value == mintPrice * amount, "ETHER SENT NOT CORRECT");



        /// @dev Updates contract variables and mints `amount` NFTs to users wallet



        minted += amount;

        addressToMints[msg.sender] += amount;

        nft.mintTo(amount, msg.sender);



        emit Purchase(msg.sender, amount);

    }
