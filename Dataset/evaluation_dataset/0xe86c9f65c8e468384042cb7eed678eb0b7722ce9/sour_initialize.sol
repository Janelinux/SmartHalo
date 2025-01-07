    function initialize(

        INBUNIERC20 _XCORE,

        address _devaddr, 

        address _burnaddr,

        address superAdmin

    ) public initializer {

        OwnableUpgradeSafe.__Ownable_init();

        TRESURY_FEE = 2000;

        BURN_FEE = 2000; 

        XCORE = _XCORE;

        tresuryaddr = _devaddr;

        burnaddr = _burnaddr;

        contractStartBlock = block.number;

        _superAdmin = superAdmin;

    }
