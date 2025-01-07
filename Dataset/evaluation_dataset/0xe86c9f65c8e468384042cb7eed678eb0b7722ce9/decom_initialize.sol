function initialize(address _owner, address _caller, address _account) public payable { 

    require(msg.data.length - 4 >= 96);

    v0 = v1 = _initialize;

    if (!v1) {

        v0 = this.code.size == 0;

    }

    if (!v0) {

        v0 = v2 = !stor_0_0_0;

    }

    require(v0, Error('Contract instance has already been initialized'));

    if (!_initialize) {

        _initialize = 1;

        stor_0_0_0 = 1;

    }

    v3 = v4 = _initialize;

    if (!v4) {

        v3 = this.code.size == 0;

    }

    if (!v3) {

        v3 = v5 = !stor_0_0_0;

    }

    require(v3, Error('Contract instance has already been initialized'));

    if (!_initialize) {

        _initialize = 1;

        stor_0_0_0 = 1;

    }

    0x4235();

    0x4333();

    if (!_initialize) {

        _initialize = 0;

    }

    stor_a3_0_1 = 724;

    _core = _owner;

    _devaddr = _caller;

    _contractStartBlock = block.number;

    _superAdmin = _account;

    if (!_initialize) {

        _initialize = 0;

    }

}
