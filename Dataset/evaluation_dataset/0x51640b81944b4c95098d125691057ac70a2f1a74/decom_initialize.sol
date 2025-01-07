function initialize(address varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 == varg0);

    v0 = v1 = 0xff & _initialize.length >> 8;

    if (!v1) {

        v0 = !(0xff & _initialize.length);

    }

    require(v0, Error('Initializable: contract is already initialized'));

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = 0x101 | ~0xffff & _initialize.length;

    }

    v2 = v3 = 0xff & _initialize.length >> 8;

    if (!v3) {

        v2 = !(0xff & _initialize.length);

    }

    require(v2, Error('Initializable: contract is already initialized'));

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = 0x101 | ~0xffff & _initialize.length;

    }

    v4 = v5 = 0xff & _initialize.length >> 8;

    if (!v5) {

        v4 = !(0xff & _initialize.length);

    }

    require(v4, Error('Initializable: contract is already initialized'));

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = 0x101 | ~0xffff & _initialize.length;

    }

    _executeSaveFunds = 1;

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = ~0xff00 & _initialize.length;

        goto 0x245a0x23fbB0x1baaB0x684;

    }

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = ~0xff00 & _initialize.length;

    }

    v6 = v7 = 0xff & _initialize.length >> 8;

    if (!v7) {

        v6 = !(0xff & _initialize.length);

    }

    require(v6, Error('Initializable: contract is already initialized'));

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = 0x101 | ~0xffff & _initialize.length;

    }

    0x2a00();

    v8 = v9 = 0xff & _initialize.length >> 8;

    if (!v9) {

        v8 = !(0xff & _initialize.length);

    }

    require(v8, Error('Initializable: contract is already initialized'));

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = 0x101 | ~0xffff & _initialize.length;

    }

    _paused = 0;

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = ~0xff00 & _initialize.length;

        goto 0x245a0x246fB0x1bb2B0x684;

    }

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = ~0xff00 & _initialize.length;

    }

    v10 = v11 = 0xff & _initialize.length >> 8;

    if (!v11) {

        v10 = !(0xff & _initialize.length);

    }

    require(v10, Error('Initializable: contract is already initialized'));

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = 0x101 | ~0xffff & _initialize.length;

    }

    0x2a00();

    0x2a00();

    0x2a00();

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = ~0xff00 & _initialize.length;

    }

    0x262e(varg0, 0);

    if (STORAGE[keccak256(varg0, keccak256(0, 201) + 1)]) {

        goto 0x7660x26b4B0x2105B0xbdf0x2545B0x1bc2B0x684;

    } else {

        v12 = v13 = 1;

        _getRoleMember[0] += v13;

        _initialize[_getRoleMember[0]] = varg0;

        STORAGE[keccak256(varg0, keccak256(0, 201) + v13)] = _getRoleMember[0];

    }

    _getRoleAdmin[0xf500f9493b90dbacfb493bff4701a6e207058123f8ed46ba91d453595a23dd5e][1] = 0;

    emit RoleAdminChanged(0xf500f9493b90dbacfb493bff4701a6e207058123f8ed46ba91d453595a23dd5e, _getRoleAdmin[0xf500f9493b90dbacfb493bff4701a6e207058123f8ed46ba91d453595a23dd5e][1], 0);

    _saveFundsLockupTime = 43200;

    if (!(0xff & _initialize.length >> 8)) {

        _initialize.length = ~0xff00 & _initialize.length;

    }

}
