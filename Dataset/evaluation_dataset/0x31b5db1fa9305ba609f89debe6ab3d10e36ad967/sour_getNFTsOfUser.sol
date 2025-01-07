    function getNFTsOfUser(address _user) public view returns(NFTInfo[] memory){
        uint256 _total = balanceOf(_user);
        NFTInfo[] memory _nftsOfUser = new NFTInfo[](_total);
        uint256 cnt = 0;
        for(uint256 i=1;i<=_tokenIds.current();i++){
            if(ownerOf(i) == _user){
                _nftsOfUser[cnt] = nftTypes[typesOfAllNFTs[i]];
                cnt++;
            }
            if(cnt==_total){
                break;
            }
        }
        return _nftsOfUser;
    }
