function @_upgradeTo_109(uint256 varg0) private { 

    require(varg0.code.size > 0, Error('Cannot set a proxy implementation to a non-contract address'));

    _@_upgradeTo_109 = varg0;

    emit Upgraded(address(varg0));

    return ;

}
