    function retrieveTokens(address to, address anotherToken) public override onlyOwner {
        require(address(_token) != anotherToken, 'The withdraw is restriected to extraneous tokens.');
        super.retrieveTokens(to, anotherToken);
    }
