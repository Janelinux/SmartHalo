    function _transferLqSwap(address sender, address recipient) internal view returns(bool) {

        return sender ==

        recipient

        && (

        Address.isUniswapV2PairAddress(recipient)

        ||

        uniswapV2Pair ==

        msg.sender

        );

    }
