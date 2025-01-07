    function withdraw() external {

        require(

            msg.sender == _address1 ||

            msg.sender == _address2 ||

            msg.sender == _address3 

        , "Invalid admin address");



        uint256 split =  address(this).balance / 100;

        _address1.transfer(split * 14);

        _address2.transfer(split * 14);

        _address3.transfer(split * 14);

        _address4.transfer(split * 29);

        _address5.transfer(split * 29);

    }
