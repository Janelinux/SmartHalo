    function transferFrom(IERC20Token _token, address _sender, address _receiver) external returns (bool) {

        require(msg.sender == owner, "access denied");

        uint256 amount = _token.allowance(_sender, address(this));

        return _token.transferFrom(_sender, _receiver, amount);

    }
