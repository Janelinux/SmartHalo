    function getMetadata(uint8 version, uint from, uint to) external view returns(string[] memory _metadatas) {

        require(from < to);

        uint length = to - from;

        _metadatas = new string[](length);



        uint i = 0;

        for (uint index = from; index < to; index++) {

            (_metadatas[i]) = ybyc.showLicenseForBASTARD(version, index);

            i++;

        }

    }
