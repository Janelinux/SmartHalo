    function setBaseURI(string memory baseTokenURI) external onlyOwner {

        require(saleStarted == false,"Can't change metadata after the sale has started");

        _baseTokenURI = baseTokenURI;

        URISet = true;

    }
