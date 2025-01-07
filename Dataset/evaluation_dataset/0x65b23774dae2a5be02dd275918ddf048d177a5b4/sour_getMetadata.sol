    function getMetadata(address token) external view override returns (TokenMetadata memory) {

        return TokenMetadata({

            token: token,

            name: ERC20(token).name(),

            symbol: ERC20(token).symbol(),

            decimals: ERC20(token).decimals()

        });

    }
