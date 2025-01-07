    function initialize(uint256 _supplyCap) public initializer {
        __ERC721_init("GOSU", "$GOSU");
        __ERC721Pausable_init();
        __AccessControlEnumerable_init();
        __UUPSUpgradeable_init();

        supplyCap = _supplyCap;

        _pause();

        address msgSender = _msgSender();
        _grantRole(DEFAULT_ADMIN_ROLE, msgSender);
        _grantRole(URI_SETTER_ROLE, msgSender);
        _grantRole(PAUSER_ROLE, msgSender);
        _grantRole(UPGRADER_ROLE, msgSender);
    }
