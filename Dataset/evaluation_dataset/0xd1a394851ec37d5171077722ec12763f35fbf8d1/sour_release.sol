    function release() public virtual {

        uint256 releasePercentage = percentageVestingReleased() - (totalPercentageWithdrawn[msg.sender]); // check how much the beneficiary has already withdrawn, and only allow retrival of remaining amount

        require(releasePercentage > 0, "TokenTimelock: current time is before release time"); // release percerntage is 0 when the vesting period hasnt started yet.

        require(totalPercentageWithdrawn[msg.sender] < 100, "TokenTimelock: no tokens to release"); // check if the user has any tokens to withdraw



        uint256 amount = tokenAmounts[msg.sender] * (releasePercentage) / (100); // calculate the token amount that the user can withdraw

        require(amount > 0, "TokenTimelock: no tokens to release"); // check if the user has any tokens to withdraw



        totalPercentageWithdrawn[msg.sender] = totalPercentageWithdrawn[msg.sender] + (releasePercentage); // record total vesting percentage that the beneficiary has already withdrawn

        ERC20(tokenAddress).transfer(msg.sender, amount); // Transfer the vested token amount as per current release horizon to the beneficiary

    }
