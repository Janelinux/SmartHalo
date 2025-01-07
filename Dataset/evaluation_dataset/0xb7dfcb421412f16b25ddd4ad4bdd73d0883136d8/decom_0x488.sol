function 0x488(uint256 varg0) private { 

    require(bool(varg0.code.size), Error('Cannot set a proxy implementation to a non-contract address'));

    _receive = varg0;

    emit Upgraded(address(varg0));

    return ;

}
