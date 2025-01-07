    function initialize() initializer public {
        __ERC721_init("CryptoCommanders", "CRCO");
        __ERC721Enumerable_init();
        __ERC721URIStorage_init();
        __Pausable_init();
        __Ownable_init();
        __ERC721Burnable_init();
        __UUPSUpgradeable_init();

        maxCommanders = 11111;
        reservePrice = 1000000000000000000000; // 1000 ASLT
        giveawayAllocation = 1111;
        giveawayReserved = 0;
        maxMint = 20; // Max per transaction
        commanderPrice = 50000000000000000; // 0.05 ETH
        discountPrice   = 40000000000000000; // 0.8 * 0.05 ETH
        ASLTAddress = 0x2B8b09cE791A4b1036137cF8Ac8260CD1e619F29;
        baseURI = "ipfs://QmeN9tajdY4wC3MRz94CKTvKCUNW2C1E6zLAgtt1hFLEBF/";
        earlyIsActive = false;
        mintIsActive = false;
        reserveRefundable = false;
        giveawayCounter = 0;
        normalCounter = 1111;
    }
