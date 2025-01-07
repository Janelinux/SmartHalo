    function tokenURI(uint256 tokenId)

        public

        view

        virtual

        override

        returns (string memory)

    {

        require(

            _exists(tokenId),

            "ERC721Metadata: URI query for nonexistent token"

        );

        string memory _tokenURI = super.tokenURI(tokenId);

        return

            bytes(_tokenURI).length > 0

                ? string(abi.encodePacked(_tokenURI, ".json"))

                : "";

    }
