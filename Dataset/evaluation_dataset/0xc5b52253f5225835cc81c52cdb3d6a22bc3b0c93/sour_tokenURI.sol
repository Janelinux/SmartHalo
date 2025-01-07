    function tokenURI(uint256 yurGoblino) public view virtual override returns (string memory) {

        require(_exists(yurGoblino), "ERC721Metadata: URI query for nonexistent token");



        uint frize = frizewitdat[yurGoblino];

        uint slop = SLOPstufs[yurGoblino];

        uint meet = MEEEEEET[yurGoblino];

        uint meltees = mellteeGUDnesses[yurGoblino];

        uint stuf = stufonnaTOP[yurGoblino];

        uint grippee = grippeebits[yurGoblino];



        if(oopsy[yurGoblino]){

            string memory baseURI = _baseURI();

            uint256 meesteak = oopsies[yurGoblino];

            return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, meesteak.toString())) : '';

        }

        else if(!utilipee){

            string memory baseURI = _baseURI();

            return bytes(baseURI).length > 0	? string(abi.encodePacked(baseURI, frize.toString(),"-",slop.toString(),"-",meet.toString(),"-",meltees.toString(),"-",stuf.toString(),"-",grippee.toString())) : "";

        }

        else{

            string memory baseURI = _baseURI();

            return bytes(baseURI).length != 0 ? string(abi.encodePacked(baseURI, yurGoblino.toString())) : '';

        }

	}
