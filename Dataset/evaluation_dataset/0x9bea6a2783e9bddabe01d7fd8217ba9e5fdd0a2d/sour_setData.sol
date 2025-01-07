    function setData(string memory _contract, string memory _base) external onlyOwner{
        _contractURI = _contract;
        _baseURI = _base;
    }
