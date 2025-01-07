    function constructTokenURI(
        iSVGRenderer renderer,
        TokenURIParams memory params
    ) public view returns (string memory) {
        string memory image = generateSVGImage(
            renderer,
            iSVGRenderer.SVGParams({
                parts: params.parts,
                background: params.background
            })
        );

        //prettier-ignore
        return string(
            abi.encodePacked(
                'data:application/json;base64,',
                Base64.encode(
                    bytes(
                        abi.encodePacked(
                            '{"name":"', params.name, '", ',
                            '"description":"', params.description, '", ',
                            '"image": "', 'data:image/svg+xml;base64,', image, '", ',
                            '"attributes": [',
                            '{"trait_type": "Altitude", "value": ', params.altitude,'},'
                            '{"trait_type": "Sky", "value": "', params.sky,'"}'
                            ']',
                            '}')
                    )
                )
            )
        );
    }
