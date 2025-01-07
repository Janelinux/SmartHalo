    function getBalance(address token, address account) external view override returns (uint256) {
        if (token == FARM) {
            uint256 totalRewards = 0;

            totalRewards += ERC20(PROFIT_SHARING_POOL).balanceOf(account);
            totalRewards += StakingRewards(FDAI_POOL).earned(account);
            totalRewards += StakingRewards(FUSDC_POOL).earned(account);
            totalRewards += StakingRewards(FUSDT_POOL).earned(account);
            totalRewards += StakingRewards(BALANCER_POOL).earned(account);
            totalRewards += StakingRewards(UNISWAP_POOL).earned(account);
            totalRewards += StakingRewards(WETH_POOL).earned(account);
            totalRewards += StakingRewards(LINK_POOL).earned(account);
            totalRewards += StakingRewards(YFI_POOL).earned(account);
            totalRewards += StakingRewards(SUSHI_POOL).earned(account);
            totalRewards += StakingRewards(YFV_POOL).earned(account);
            totalRewards += StakingRewards(YFII_POOL).earned(account);
            totalRewards += StakingRewards(OGN_POOL).earned(account);
            totalRewards += StakingRewards(BASED_POOL).earned(account);
            totalRewards += StakingRewards(PASTA_POOL).earned(account);

            return totalRewards;
        } else if (token == DAI) {
            return StakingRewards(PROFIT_SHARING_POOL).earned(account);
        } else if (token == FDAI) {
            return ERC20(FDAI_POOL).balanceOf(account);
        } else if (token == FUSDC) {
            return ERC20(FUSDC_POOL).balanceOf(account);
        } else if (token == FUSDT) {
            return ERC20(FUSDT_POOL).balanceOf(account);
        } else if (token == BALANCER_USDC_95_FARM_5) {
            return ERC20(BALANCER_POOL).balanceOf(account);
        } else if (token == UNISWAP_V2_USDC_FARM) {
            return ERC20(UNISWAP_POOL).balanceOf(account);
        } else if (token == WETH) {
            return ERC20(WETH_POOL).balanceOf(account);
        } else if (token == LINK) {
            return ERC20(LINK_POOL).balanceOf(account);
        } else if (token == YFI) {
            return ERC20(YFI_POOL).balanceOf(account);
        } else if (token == SUSHI) {
            return ERC20(SUSHI_POOL).balanceOf(account);
        } else if (token == YFV) {
            return ERC20(YFV_POOL).balanceOf(account);
        } else if (token == YFII) {
            return ERC20(YFII_POOL).balanceOf(account);
        } else if (token == OGN) {
            return ERC20(OGN_POOL).balanceOf(account);
        } else if (token == UNISWAP_V2_BASED_SUSD) {
            return ERC20(BASED_POOL).balanceOf(account);
        } else if (token == UNISWAP_V2_PASTA_WETH) {
            return ERC20(PASTA_POOL).balanceOf(account);
        } else {
            return 0;
        }
    }
