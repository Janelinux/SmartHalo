function transferOwnership(address varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    require(_owner == msg.sender, Error('Ownable: caller is not the owner'));

    require(varg0, Error('Ownable: new owner is the zero address'));

    emit OwnershipTransferred(_owner, varg0);

    _owner = varg0;

}
