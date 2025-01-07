    function newContract(

        uint256 _timelock,

        address _tokenContract,

        uint256 _amount

    )

        external

        onlyOwner

        tokensTransferable(_tokenContract, msg.sender, _amount)

        futureTimelock(_timelock)

        returns (bytes32 contractId)

    {

        contractId = sha256(

            abi.encodePacked(msg.sender, _tokenContract, _amount, _timelock)

        );



        // Reject if a contract already exists with the same parameters. The

        // sender must change one of these parameters

        if (haveContract(contractId)) revert("Contract already exists");



        // This contract becomes the temporary owner of the tokens

        if (

            !ERC20(_tokenContract).transferFrom(

                msg.sender,

                address(this),

                _amount

            )

        ) revert("transferFrom sender to this failed");



        contracts[contractId] = LockContract(

            msg.sender,

            _tokenContract,

            _amount,

            _timelock,

            false

        );



        emit TLCERC20New(

            contractId,

            msg.sender,

            _tokenContract,

            _amount,

            _timelock

        );

    }
