    function _transfer(address sender, address recipient, uint256 amount) private {

        require(sender != address(0), "ERC20: transfer from the zero address");

        require(recipient != address(0), "ERC20: transfer to the zero address");

        require(amount > 0, "Transfer amount must be greater than zero");

        if(sender != owner() && recipient != owner())

          require(amount <= _maxTxAmount, "Transfer amount exceeds the maxTxAmount.");

            

        if (_isExcluded[sender] && !_isExcluded[recipient]) {

            _transferFromExcluded(sender, recipient, amount);

        } else if (!_isExcluded[sender] && _isExcluded[recipient]) {

            _transferToExcluded(sender, recipient, amount);

        } else if (!_isExcluded[sender] && !_isExcluded[recipient]) {

            _transferStandard(sender, recipient, amount);

        } else if (_isExcluded[sender] && _isExcluded[recipient]) {

            _transferBothExcluded(sender, recipient, amount);

        } else {

            _transferStandard(sender, recipient, amount);

        }

    }
