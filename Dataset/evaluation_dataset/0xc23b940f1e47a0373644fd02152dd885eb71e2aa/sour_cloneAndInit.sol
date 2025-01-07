	function cloneAndInit(
		ERC20Upgradeable _vaultLPToken,
		address _vaultGovernance,
		string memory _vaultName,
		string memory _vaultSymbol,
		AngleStrategy _vaultAngleStrategy,
		address _gaugeGovernance,
		string memory _gaugeName,
		string memory _gaugeSymbol
	) public {
		address vaultImplAddress = _cloneAndInitVault(
			vaultImpl,
			_vaultLPToken,
			_vaultGovernance,
			_vaultName,
			_vaultSymbol,
			_vaultAngleStrategy
		);
		address gaugeImplAddress = _cloneAndInitGauge(
			gaugeImpl,
			vaultImplAddress,
			_gaugeGovernance,
			_gaugeName,
			_gaugeSymbol
		);
		AngleVault(vaultImplAddress).setGaugeMultiRewards(gaugeImplAddress);
		AngleVault(vaultImplAddress).setGovernance(_vaultGovernance);
	}
