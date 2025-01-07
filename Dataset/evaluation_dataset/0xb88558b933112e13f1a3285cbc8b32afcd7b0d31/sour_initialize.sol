    function initialize(string memory name, string memory symbol) public initializer {

        require(bytes(name).length != 0,"Invalid name");

        require(bytes(symbol).length != 0,"Invalid symbol");

        __ERC20_init(name, symbol);

        __AccessControlEnumerable_init();

        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE,_msgSender());

    }
