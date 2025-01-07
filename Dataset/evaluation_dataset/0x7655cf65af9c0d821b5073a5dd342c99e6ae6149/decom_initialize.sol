function initialize() public nonPayable { 

    v0 = v1 = !_initialize;

    if (!_initialize) {

        v0 = v2 = stor_0_0_0 < 1;

    }

    if (!v0) {

        v0 = v3 = (address(this)).code.size <= 0;

        if (!bool((address(this)).code.size > 0)) {

            v0 = stor_0_0_0 == 1;

        }

    }

    require(v0, Error('Initializable: contract is already initialized'));

    stor_0_0_0 = 1;

    if (!_initialize) {

        _initialize = 1;

    }

    require(_initialize, Error('Initializable: contract is not initializing'));

    owner_0_2_21 = msg.sender;

    _authorize[msg.sender] = 0x1 | bytes31(_authorize[address(address(msg.sender))]);

    if (!_initialize) {

        _initialize = 0;

        emit Initialized(uint8(1));

    }

}
