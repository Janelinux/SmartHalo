function sponsor(address varg0) public nonPayable { 

    require(msg.data.length - 4 >= 32);

    emit Sponsor(varg0);

}
