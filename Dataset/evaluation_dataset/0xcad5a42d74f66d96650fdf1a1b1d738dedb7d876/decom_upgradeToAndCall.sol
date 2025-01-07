function upgradeToAndCall(address newImplementation, bytes data) public payable { 

    require(msg.data.length - 4 >= 64);

    require(data <= uint64.max);

    require(4 + data + 31 < msg.data.length);

    require(data.length <= uint64.max);

    require(4 + data + data.length + 32 <= msg.data.length);

    if (msg.sender != address(_admin)) {

        require(msg.sender != address(_admin), Error('TransparentUpgradeableProxy: admin cannot fallback to proxy target'));

        CALLDATACOPY(0, 0, msg.data.length);

        v0 = _receive.delegatecall(MEM[0:msg.data.length], MEM[0:0]).gas(msg.gas);

        require(v0, 0, RETURNDATASIZE()); // checks call status, propagates error data on error

        return MEM[0:RETURNDATASIZE()];

    } else {

        0x3a9(newImplementation);

        CALLDATACOPY(v1.data, data.data, data.length);

        MEM[data.length + v1.data] = 0;

        v2, /* uint256 */ v3 = newImplementation.delegatecall(v1.data).gas(msg.gas);

        if (RETURNDATASIZE() != 0) {

            v4 = new bytes[](RETURNDATASIZE());

            RETURNDATACOPY(v4.data, 0, RETURNDATASIZE());

        }

        require(v2);

    }

}
