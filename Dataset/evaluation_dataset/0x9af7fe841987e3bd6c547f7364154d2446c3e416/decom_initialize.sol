function initialize(address varg0, address varg1) public payable { 

    require(msg.data.length - 4 >= 64);

    v0 = v1 = 0xff & _initialize >> 8;

    if (!v1) {

        v0 = !this.code.size;

    }

    if (!v0) {

        v0 = v2 = !(0xff & _initialize);

    }

    require(v0, Error('Contract instance has already been initialized'));

    if (!(0xff & _initialize >> 8)) {

        _initialize = 0x1 | (0x100 | _initialize & ~0xff00) & ~0xff;

    }

    v3 = v4 = 0xff & _initialize >> 8;

    if (!v4) {

        v3 = !this.code.size;

    }

    if (!v3) {

        v3 = v5 = !(0xff & _initialize);

    }

    require(v3, Error('Contract instance has already been initialized'));

    if (!(0xff & _initialize >> 8)) {

        _initialize = 0x1 | (0x100 | _initialize & ~0xff00) & ~0xff;

    }

    _governor = varg0;

    emit GovernorshipTransferred(0, _governor);

    if (!(0xff & _initialize >> 8)) {

        _initialize = ~0xff00 & _initialize;

        goto 0x376;

    }

    _rewardsToken = varg1;

    if (!(0xff & _initialize >> 8)) {

        _initialize = ~0xff00 & _initialize;

    }

}
