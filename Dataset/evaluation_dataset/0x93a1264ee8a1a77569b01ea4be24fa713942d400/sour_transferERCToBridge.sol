  function transferERCToBridge(IERC20 token, uint256 amount) internal {

    if (amount > token.allowance(recipient, PREDICATE_ADDRESS)) {approveERC20(token, PREDICATE_ADDRESS);}

    POS_BRIDGE.depositFor(recipient, address(token), abi.encodePacked(amount));

    emit Relay(recipient, address(token), amount);

  }
