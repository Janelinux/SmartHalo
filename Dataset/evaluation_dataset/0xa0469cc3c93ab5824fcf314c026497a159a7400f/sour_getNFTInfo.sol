   function getNFTInfo(

      address tokenAddress_,

      uint256 point_,

      uint256 length_

   ) external view returns(NFTInfo[] memory) {

      (

         uint256 cnt,

         NFTInfo[] memory tmpInfos

      ) = _getExistsTokenIDCount(tokenAddress_, point_, length_);

      

      if (cnt == 0) {

         return new NFTInfo[](0);

      }



      uint256 index = 0;

      NFTInfo[] memory infos = new NFTInfo[](cnt);



      for (uint256 i = 0; i < length_; i ++) {

         if (tmpInfos[i].tokenID != 0) {

            infos[index ++] = tmpInfos[i];

         }

      }



      return infos;

   }
