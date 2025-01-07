function initialize() public nonPayable { 

    require(msg.data.length + ~3 >= v0v0, v0);

    v1 = STORAGE[v0];

    v2 = v3 = !(v1 >> 8 & 0xff);

    if (v3) {

        v2 = v4 = v1 & 0xff < 1;

        goto 0x421;

    }

    if (!v2) {

        v2 = v5 = !this.code.size;

        if (v5) {

            v2 = v6 = v1 & 0xff == 1;

        }

    }

    if (!v2) {

        v7 = MEM[v8];

        MEM[v7] = 0x8c379a000000000000000000000000000000000000000000000000000000000;

        MEM[v7 + 4] = 32;

        MEM[v7 + 36] = 46;

        MEM[v7 + 68] = 'Initializable: contract is alrea';

        MEM[v7 + 100] = 'dy initialized';

        revert(v7, 132);

    } else {

        STORAGE[v0] = 0x1 | v1 & ~0xff;

        if (v3) {

            STORAGE[v0] = 0x101 | ~0xffff & v1;

            v9 = this.code.size;

            goto 0x43d;

        }

        v10 = STORAGE[v0] >> 8 & 0xff;

        require(v10, Error('Initializable: contract is not initializing'));

        require(v10, Error('Initializable: contract is not initializing'));

        require(v10, Error('Initializable: contract is not initializing'));

        _owner = msg.sender;

        emit OwnershipTransferred(_owner, msg.sender);

        if (v3) {

            STORAGE[v0] = STORAGE[v0] & ~0xff00;

            MEM[MEM[v8]] = 1;

            emit Initialized();

            return MEM[v0 len v0];

        } else {

            return MEM[v0 len v0];

        }

    }

}
