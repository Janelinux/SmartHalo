    function initialize(address _admin) public initializer {

        __ReentrancyGuard_init();

        __Pausable_init();

        __AccessControl_init();



        _setupRole(DEFAULT_ADMIN_ROLE, _admin);

        _setRoleAdmin(MOSAIC_VAULT, DEFAULT_ADMIN_ROLE);



        saveFundsLockupTime = 12 hours;

    }
