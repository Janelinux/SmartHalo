  function setBalancesBatch(address[] calldata _accounts, Balance[][] calldata _balancesBatch) external onlyDistributorInactive onlyOwner {
    require(_accounts.length > 0, 'accounts array must not be empty');
    require(_balancesBatch.length > 0, 'balancesBatch array must not be empty');
    require(_accounts.length == _balancesBatch.length, 'accounts and balances array must be the same length');
    for (uint i = 0; i < _accounts.length; i++) {
      address account = _accounts[i];
      if (accountBalances[account].length > 0) {
        delete accountBalances[account];
      }
      Balance[] memory balances = _balancesBatch[i];
      for (uint j = 0; j < balances.length; j++) {
        accountBalances[account].push(balances[j]);
      }
      if (accountsIndexes[account] == 0) {
        accounts.push(account);
        accountsIndexes[account] = accounts.length;
      }
    }
  }
