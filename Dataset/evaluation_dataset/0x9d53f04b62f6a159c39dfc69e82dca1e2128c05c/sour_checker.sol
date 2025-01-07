    function checker()

        external

        returns (bool canExec, bytes memory execPayload)

    {

        canExec = (block.timestamp - lastExecuted) > interval;

        if (canExec) {

            lastExecuted = block.timestamp;    

        }

        

        execPayload = abi.encodeWithSelector(

            IAdvancedStakingProxy.addRewards.selector

        );

    }
