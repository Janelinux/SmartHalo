function getPriceInUsd(address varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(varg0 == varg0);

    require(bool(msg.sender.code.size));

    v0, v1 = msg.sender.getPriceInUsd(0xc02aaa39b223fe8d0a0e5c4f27ead9083c756cc2).gas(msg.gas);

    require(bool(v0), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(bool((address(0xa1f8a6807c402e4a15ef4eba36528a3fed24e577)).code.size));

    v2, v3 = address(0xa1f8a6807c402e4a15ef4eba36528a3fed24e577).price_oracle().gas(msg.gas);

    require(bool(v2), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    if (v3 > 0xde0b6b3a7640000) {

        v3 = v4 = 0xde0b6b3a7640000;

    }

    require(bool((address(0xac3e018457b222d93114458476f3e3416abbe38f)).code.size));

    v5, v6 = address(0xac3e018457b222d93114458476f3e3416abbe38f).pricePerShare().gas(msg.gas);

    require(bool(v5), 0, RETURNDATASIZE()); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(!(bool(v6) & (v3 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / v6)), Panic(17)); // arithmetic overflow or underflow

    require(!(bool(v6 * v3) & (v1 > 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff / (v6 * v3))), Panic(17)); // arithmetic overflow or underflow

    require(0xc097ce7bc90715b34b9f1000000000, Panic(18)); // division by zero

    return v6 * v3 * v1 / 0xc097ce7bc90715b34b9f1000000000;

}
