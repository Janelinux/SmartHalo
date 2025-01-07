 function _transfer(address sender, address recipient, uint amount) internal {

        require(sender != address(0), "ERC20: transfer from the zero address");

        require(recipient != address(0), "ERC20: transfer to the zero address");

        

        uint256 burntAmount = amount * 5 / 100;

        _burn(sender, burntAmount);

        uint256 leftAmount = amount - burntAmount;

        _balances[sender] = _balances[sender].sub(leftAmount, "ERC20: transfer amount exceeds balance");

        _balances[recipient] = _balances[recipient].add(leftAmount);

        emit Transfer(sender, recipient,leftAmount);

        

        

      }
