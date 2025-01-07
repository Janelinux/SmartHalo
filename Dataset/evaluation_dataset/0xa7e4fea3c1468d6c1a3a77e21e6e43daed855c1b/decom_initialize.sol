function initialize(address _token0, address _token1) public payable { 

    require(msg.data.length - 4 >= 64);

    v0 = v1 = _initialize;

    if (!v1) {

        v0 = bool(!this.code.size);

    }

    if (!v0) {

        v0 = v2 = !stor_0_0_0;

    }

    require(v0, Error('Initializable: contract is already initialized'));

    if (!_initialize) {

        stor_0_0_1 = 0;

    }

    _tokenBeacon = _token0;

    v3 = v4 = _initialize;

    if (!v4) {

        v3 = bool(!this.code.size);

    }

    if (!v3) {

        v3 = v5 = !stor_0_0_0;

    }

    require(v3, Error('Initializable: contract is already initialized'));

    if (!_initialize) {

        stor_0_0_1 = 0;

    }

    _xAppConnectionManager = _token1;

    v6 = v7 = _initialize;

    if (!v7) {

        v6 = bool(!this.code.size);

    }

    if (!v6) {

        v6 = v8 = !stor_0_0_0;

    }

    require(v6, Error('Initializable: contract is already initialized'));

    if (!_initialize) {

        stor_0_0_1 = 0;

    }

    v9 = v10 = _initialize;

    if (!v10) {

        v9 = bool(!this.code.size);

    }

    if (!v9) {

        v9 = v11 = !stor_0_0_0;

    }

    require(v9, Error('Initializable: contract is already initialized'));

    if (_initialize) {

        if (!_initialize) {

            _initialize = 0;

        }

    } else {

        stor_0_0_1 = 0;

        if (!_initialize) {

            _initialize = 0;

        }

    }

    v12 = v13 = _initialize;

    if (!v13) {

        v12 = bool(!this.code.size);

    }

    if (!v12) {

        v12 = v14 = !stor_0_0_0;

    }

    require(v12, Error('Initializable: contract is already initialized'));

    if (!_initialize) {

        stor_0_0_1 = 0;

    }

    _owner = msg.sender;

    emit OwnershipTransferred(0, msg.sender);

    if (!_initialize) {

        _initialize = 0;

    }

    if (!_initialize) {

        _initialize = 0;

    }

    if (!_initialize) {

        _initialize = 0;

    }

    if (!_initialize) {

        _initialize = 0;

    }

}
