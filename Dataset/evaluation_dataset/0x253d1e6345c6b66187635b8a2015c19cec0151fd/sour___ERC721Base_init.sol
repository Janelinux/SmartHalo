    function __ERC721Base_init(

        string memory _name, // Name of collection

        string memory _symbol, // Symbol of collection

        string memory _contractURI, // Metadata of collection

        string memory _tokenURIPrefix, // Base URI of collection

        uint96 _royaltyLimit // Max Royalty limit for collection

    ) internal onlyInitializing{

        __Ownable_init();

        __ERC721_init(_name, _symbol);

        __ERC721Burnable_init();

        __ERC721Enumerable_init();

        __ERC721Royalty_init();

        __ERC721URIStorage_init();

        require(

            _royaltyLimit <= _feeDenominator(),

            "ERC721Base: Royalty limit must be below 100%"

        );

        royaltyLimit = _royaltyLimit;

        contractURI = _contractURI;

        baseURI_ = _tokenURIPrefix;

        counter = 0;

    }
