    function create(Pool memory pool, address[] memory whitelist_) public onlyOwner {

        // transfer amount of token0 to this contract

        IERC20 _token0 = IERC20(pool.token0);

        // uint token0BalanceBefore = _token0.balanceOf(address(this));

        // _token0.safeTransferFrom(pool.creator, address(this), pool.amountTotal0);

        // require(

        //     _token0.balanceOf(address(this)).sub(token0BalanceBefore) == pool.amountTotal0,

        //     "DON'T SUPPORT DEFLATIONARY TOKEN"

        // );

        // reset allowance to 0

        _token0.safeApprove(address(this), 0);



        uint index = getPoolCount();

        super._setEnableWhiteList(index, false);

        super._addWhitelist(index, whitelist_);

        super._setPoolToken(pool.creator, pool.token0, pool.token1, pool.amountTotal0, pool.amountTotal1, pool.maxAllocToken1);

        super._setPoolTime(index, pool.openAt, pool.closeAt, pool.claimAt);



        emit Created(index, msg.sender, pool);

    }
