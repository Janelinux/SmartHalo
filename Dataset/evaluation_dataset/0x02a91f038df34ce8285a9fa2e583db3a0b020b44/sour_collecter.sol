	function collecter(address TToken, uint256 nftID, uint128 amt0max, uint128 amt1max, bool ETH) public payable {

        require(msg.sender == InftRoute(Unft).ownerOf(nftID));

	    bytes memory Adata = abi.encode(nftID,address(this),amt0max,amt1max);

	    bytes memory Adata2 = abi.encodePacked(bytes4(0xfc6f7865),Adata);

	    (, bytes memory rtn) = Unft.call(Adata2);

	    (uint128 amt0,uint128 amt1) = abi.decode(rtn,(uint128,uint128));

	    require(amt0 > 0 || amt1 > 0, "no amt");

	    uint256 Uamt = amt0 > 0 ? amt0 : amt1;

        uint256 vig = Uamt.mul(fee).div(1000);

        address payable usr = msg.sender;

	    if(ETH){

	        if(TToken == weth){

                (bool wet,) = weth.call(abi.encodeWithSignature("withdraw(uint256)",Uamt));

                require(wet, "Weth withdraw error");

                usr.transfer(Uamt.sub(vig));

	        }else{

	            safeTransfer(TToken,usr,Uamt.sub(vig));

	        }

	    }else{

	        safeTransfer(TToken,usr,Uamt.sub(vig));

	    }

	}
