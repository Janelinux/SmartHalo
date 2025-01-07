function latestAnswer() public payable { 

    v0, v1 = 0x8fffffd4afb6115b954bd326cbe7b4ba576818f6.latestAnswer().gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    v2, v3 = 0xa354f35829ae975e850e23e9615b11da1b3dc4de.pricePerShare().gas(msg.gas);

    require(v2); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(!(v3 & (v1 > ~0 / v3)), Panic(17));

    require(!(0x2710 & (v3 * v1 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43)), Panic(17));

    return 10000 * (v3 * v1);

}
