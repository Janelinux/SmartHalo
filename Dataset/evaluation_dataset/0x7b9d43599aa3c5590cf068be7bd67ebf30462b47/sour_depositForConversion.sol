    function depositForConversion(address _toBscAddress, uint256 _amount)

        external

        nonReentrant()

    {

        require(_amount != 0, "Amount cannot be 0");

        require(_amount <= availableMxxAmt, "Amount exceeded");

        require(_toBscAddress != address(0), "Invalid BSC address");



        ERC20(MXX_ADDRESS).safeTransferFrom(msg.sender, address(this), _amount);



        allConversions[index] = ConversionDetails(

            _amount,

            feePcnt,

            msg.sender,

            _toBscAddress,

            uint48(now),

            0,

            Status.New

        );



        emit NewConversion(

            index,

            msg.sender,

            _toBscAddress,

            _amount,

            feePcnt,

            block.timestamp

        );



        index = index.add(1);

        availableMxxAmt = availableMxxAmt.sub(_amount);

    }
