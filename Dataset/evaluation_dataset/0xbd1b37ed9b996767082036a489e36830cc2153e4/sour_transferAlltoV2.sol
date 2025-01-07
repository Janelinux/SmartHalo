    function transferAlltoV2(address _addr, address _to, uint256[] memory _tokenIds) external onlyDeployer {

        for(uint256 i = 0; i < _tokenIds.length; i++){

            IERC721(_addr).safeTransferFrom(address(this), _to, _tokenIds[i]);

        }

    }
