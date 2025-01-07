function setMainContract(address varg0) public nonPayable { 

    require(4 + (msg.data.length - 4) - 4 >= 32);

    require(varg0 == varg0);

    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));

    require(varg0 != address(this), Error('VELOXPROXY_CIRCULAR_REFERENCE'));

    require(varg0.code.size > 0, Error('VELOXPROXY_NOT_CONTRACT'));

    _fallback = varg0;

    return 1;

}
