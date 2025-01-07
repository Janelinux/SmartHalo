    function initializeERC721(string memory name_, string memory symbol_) public override onlyOwner {
        if(initializedERC721) {
            revert AlreadyInitializedERC721();
        }

        _contractName = name_;
        _contractSymbol = symbol_;

        initializedERC721 = true;
    }
