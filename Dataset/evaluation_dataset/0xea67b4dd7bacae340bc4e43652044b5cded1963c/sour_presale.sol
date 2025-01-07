    function presale(uint256 num, uint256 _total, bool _presale, bytes memory sig) public payable whenNotPaused {
        require(!_presale_paused, "Presale paused");
        require(!_usedPresaleAddress[msg.sender], "Presale Address already used!");

        string memory wallet = toAsciiString(msg.sender);
        require(isValidSignature(wallet, _total, _presale, sig) == true, "Invalid signature!");
        require(num <= _total, "Maximum reached!");

        uint256 supply = totalSupply();
        require(supply.add(num) <= MAX_SUPPLY - _reserved, "Exceeds maximum Moonkys supply");
        require(msg.value >= _price * num, "Ether sent is not correct");

        for(uint256 i; i < num; i++){
            _tokenIdentifiers.increment();
            uint256 newRECIdentifier = _tokenIdentifiers.current();
            _safeMint(msg.sender, newRECIdentifier);
        }
        _usedPresaleAddress[msg.sender] = true;
    }
