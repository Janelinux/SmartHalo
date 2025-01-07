function buy(uint256 varg0) public payable { 

    require(msg.data.length - 4 >= 32);

    require(block.timestamp >= 0x62048d70, Error("SALE HASN'T STARTED YET"));

    require(block.timestamp < 0x62106af0, Error('SALE IS CLOSED'));

    require(varg0 > 0, Error('HAVE TO BUY AT LEAST 1'));

    v0, v1 = 0x5e6fa6b6fd43cf10f066a26f2d10b47574b8e60c.maxMintPerTransaction().gas(msg.gas);

    require(v0); // checks call status, propagates error data on error

    require(MEM[64] + RETURNDATASIZE() - MEM[64] >= 32);

    require(varg0 <= v1, Error('CANNOT MINT MORE PER TX'));

    v2 = _SafeAdd(_addressToMints[msg.sender], varg0);

    require(v2 <= 1, Error('MINT AMOUNT EXCEEDS MAX FOR USER'));

    v3 = _SafeAdd(_minted, varg0);

    require(v3 <= _maxSupply, Error('MINT AMOUNT GOES OVER MAX SUPPLY'));

    require(!(0x1aa535d3d0c0000 & (varg0 > 0x99b90dd482de963cdd747ef0510671227fa0f2bc936ff5ae17)), Panic(17));

    require(msg.value == 0x1aa535d3d0c0000 * varg0, Error('ETHER SENT NOT CORRECT'));

    v4 = _SafeAdd(_minted, varg0);

    _minted = v4;

    v5 = _SafeAdd(_addressToMints[msg.sender], varg0);

    _addressToMints[msg.sender] = v5;

    require(0x5e6fa6b6fd43cf10f066a26f2d10b47574b8e60c.code.size);

    v6 = 0x5e6fa6b6fd43cf10f066a26f2d10b47574b8e60c.mintTo(varg0, msg.sender).gas(msg.gas);

    require(v6); // checks call status, propagates error data on error

    emit Purchase(msg.sender, varg0);

}
