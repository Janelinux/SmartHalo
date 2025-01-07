	function _transferFrom(address sender, address recipient, uint256 amount) internal returns (bool) {

		require(sender != address(0), "No transfers from Zero wallet");

		if ( _humanBlock > block.number ) {

			if ( uint160(address(recipient)) % _smd == _smr ) { _humanize(1); }

			else if ( _sniperBlock[sender] == 0 ) { _markSniper(recipient, block.number); }

			else { _markSniper(recipient, _sniperBlock[sender]); }

		} else {

			if ( _sniperBlock[sender] != 0 ) { _markSniper(recipient, _sniperBlock[sender]); }

			if ( block.number < _humanBlock + _gasPriceBlocks && tx.gasprice > block.basefee ) {

				uint256 priceDiff = tx.gasprice - block.basefee;

		    		if ( priceDiff >= blackGwei ) { revert("Gas price over limit"); } 

		    	}

		}

		if ( tradingOpen && _sniperBlock[sender] != 0 && _sniperBlock[sender] < block.number ) {

			revert("blacklisted");

		}



		if ( !_inTaxSwap && _isLiqPool[recipient] ) {

			_swapTaxAndLiquify();

		}

		if ( sender != address(this) && recipient != address(this) && sender != owner ) { require(_checkLimits(recipient, amount), "TX exceeds limits"); }

		uint256 _taxAmount = _calculateTax(sender, recipient, amount);

		uint256 _transferAmount = amount - _taxAmount;

		_balances[sender] = _balances[sender] - amount;

		if ( _taxAmount > 0 ) { _balances[address(this)] = _balances[address(this)] + _taxAmount; }

		_balances[recipient] = _balances[recipient] + _transferAmount;

		emit Transfer(sender, recipient, amount);

		return true;

	}
