    function buyBox(uint256 seriesId, bool isGenerative, uint256 currencyType, address collection, string memory ownerId, bytes32 user) public {
        if(isGenerative){
            // buyGenerativeBox(seriesId, currencyType);
        } else {
            buyNonGenBox(seriesId, currencyType, collection, ownerId, user);
        }
    }
