    function buyNFT(address _nftContractAddress, uint256 _tokenId)

        public

        payable

        nonReentrant

    {

        Sale storage sale = nftContractSale[_nftContractAddress][_tokenId];

        address seller = sale.nftSeller;

        require(msg.sender != seller, "Seller cannot buy own NFT");

        uint256 buyNowPrice = sale.buyNowPrice;

        uint256 platformFees = (buyNowPrice *

            (dataStorage.platformCommission())) / (10000);

        uint256 totalPayable = buyNowPrice + platformFees;



        address erc20Token = sale.ERC20Token;

        if (_isERC20Auction(erc20Token)) {

            _buyNFTWithERC20(

                _nftContractAddress,

                _tokenId,

                seller,

                erc20Token,

                buyNowPrice

            );

            IERC721(_nftContractAddress).safeTransferFrom(

                address(this),

                msg.sender,

                _tokenId

            );

            return;

        } else {

            require(msg.value >= totalPayable, "Must be greater than NFT cost");

        }

        _buyNFTWithEth(_nftContractAddress, _tokenId);



        IERC721(_nftContractAddress).safeTransferFrom(

            address(this),

            msg.sender,

            _tokenId

        );

    }
