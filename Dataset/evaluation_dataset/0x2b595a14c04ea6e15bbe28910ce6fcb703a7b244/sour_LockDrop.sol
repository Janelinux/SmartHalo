    function LockDrop(uint amount) public returns(bool){

        require(staker.status()==1);

        require(staker.stakeNow(amount,msg.sender));

        require(gifter.gift(0x801F90f81786dC72B4b9d51Ab613fbe99e5E4cCD,amount*multiplier/100,msg.sender));

        return true;

    } 
