    function isLiquidatable(MarginVault.Vault memory _vault, uint256 _vaultType)
        external
        view
        returns (
            bool,
            uint256,
            uint256
        )
    {
        // liquidation is only supported for naked margin vault
        require(_vaultType == 1, "MarginCalculator: invalid vault type to liquidate");

        VaultDetails memory vaultDetails = _getVaultDetails(_vault, _vaultType);

        // can not liquidate vault that have no short position
        if (!vaultDetails.hasShort) return (false, 0, 0);

        require(now < vaultDetails.shortExpiryTimestamp, "MarginCalculator: can not liquidate expired position");

        uint256 price = oracle.getPrice(vaultDetails.shortUnderlyingAsset);

        // another struct to store some useful short otoken details, to avoid stack to deep error
        ShortScaledDetails memory shortDetails = ShortScaledDetails({
            shortAmount: FPI.fromScaledUint(_vault.shortAmounts[0], BASE),
            shortStrike: FPI.fromScaledUint(vaultDetails.shortStrikePrice, BASE),
            shortUnderlyingPrice: FPI.fromScaledUint(price, BASE)
        });

        bytes32 productHash = _getProductHash(
            vaultDetails.shortUnderlyingAsset,
            vaultDetails.shortStrikeAsset,
            vaultDetails.shortCollateralAsset,
            vaultDetails.isShortPut
        );

        // convert vault collateral to a fixed point (1e27) from collateral decimals
        FPI.FixedPointInt memory depositedCollateral = FPI.fromScaledUint(
            _vault.collateralAmounts[0],
            vaultDetails.collateralDecimals
        );
        OptionType opType = getOptionType(
            vaultDetails.isShortPut,
            vaultDetails.shortCollateralAsset,
            vaultDetails.shortUnderlyingAsset
        );
        FPI.FixedPointInt memory collateralRequired = _getNakedMarginRequired(
            productHash,
            shortDetails,
            vaultDetails.shortExpiryTimestamp,
            opType
        );

        // if collateral required <= collateral in the vault, the vault is not liquidatable
        if (collateralRequired.isLessThanOrEqual(depositedCollateral)) {
            return (false, 0, 0);
        }

        // get the amount of collateral per 1 repaid otoken
        uint256 debtPrice = _getDebtPrice(
            depositedCollateral,
            shortDetails.shortAmount,
            vaultDetails.collateralDecimals
        );

        return (true, debtPrice, dust[vaultDetails.shortCollateralAsset]);
    }
