function distribute() public payable { 

    v0 = v1 = 0;

    while (v0 < _distributors.length) {

        assert(v0 < _distributors.length);

        require((address(_distributors[v0])).code.size);

        v2 = address(_distributors[v0]).distribute().gas(msg.gas);

        require(v2); // checks call status, propagates error data on error

        v0 += 1;

    }

}
