    function initialize(

        address _rewardsDistribution,

        address _rewardsToken,

        address _stakingToken

    ) public virtual initializer {

        super.__ReentrancyGuard_init();

        rewardsToken = IERC20(_rewardsToken);

        stakingToken = IERC20(_stakingToken);

        rewardsDistribution = _rewardsDistribution;

    }
