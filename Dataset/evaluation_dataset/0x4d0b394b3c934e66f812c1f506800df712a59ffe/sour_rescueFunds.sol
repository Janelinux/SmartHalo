    function rescueFunds(
        address token_,
        address userAddress_,
        uint256 amount_
    ) internal {
        require(userAddress_ != address(0));

        if (token_ == ETH_ADDRESS) {
            (bool success, ) = userAddress_.call{value: address(this).balance}(
                ""
            );
            require(success);
        } else {
            IERC20(token_).transfer(userAddress_, amount_);
        }
    }
