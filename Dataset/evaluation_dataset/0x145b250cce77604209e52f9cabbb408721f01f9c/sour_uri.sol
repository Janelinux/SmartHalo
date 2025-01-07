    function uri(uint256 typeId) public view override returns (string memory) {

        require(typeInfo[typeId].maxSupply > 0, "invalid type");

        Image memory img = traitData[typeId];

        string memory metadata = string(

            abi.encodePacked(

                '{"name": "',

                img.name,

                '", "description": "Raw Pytheas resources - All the metadata and images are generated and stored 100% on-chain. No IPFS. NO API. Just the Ethereum blockchain.", "image": "data:image/svg+xml;base64,',

                base64(bytes(drawSVG(typeId))),

                '", "attributes": []',

                "}"

            )

        );

        return

            string(

                abi.encodePacked(

                    "data:application/json;base64,",

                    base64(bytes(metadata))

                )

            );

    }
