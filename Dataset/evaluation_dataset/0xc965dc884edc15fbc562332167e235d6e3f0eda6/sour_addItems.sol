    function addItems(ListItem[] calldata _items) external onlyOwner {

        for (uint8 i = 0; i < _items.length; i++) {

            require(

                listDetails[_items[i].projectId].nft == address(0), 

                "NFT already listed."

            );



            INFT(_items[i].nft).transferFrom(msg.sender, address(this), _items[i].tokenId);



            listDetails[_items[i].projectId] = _items[i];



            emit ItemAdded(

                _items[i].projectId, 

                _items[i].nft, 

                _items[i].tokenId, 

                _items[i].price, 

                _items[i].isAuction

            );

        }

    }
