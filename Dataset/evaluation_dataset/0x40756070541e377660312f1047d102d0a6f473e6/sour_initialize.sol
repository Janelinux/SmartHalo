    function initialize(
        address _aliveHouseRoyaltyReceiver, // Treasury Wallet address
        uint8 _feePercent, // Precentage of Fee
        address _managerWallet, // Alive Manager Wallet address
        address _bandImp, // Initial Band implementation address
        address[] memory _songImps, // Initial Song implementations address(Fixed,Bonded, Dutch)
        uint256[] memory _maxMintAmountsPerTx, // Limits of songs per mint
        address _splitsAddress, // Splits Imp address
        address _admin
    ) public initializer {
        require(_feePercent < 100, "Percentage must be less than 100!");
        initialMaxMintAmountPerTx = 10;
        isManagerWallet[_managerWallet] = true;
        aliveHouseRoyaltyReceiver = _aliveHouseRoyaltyReceiver;
        aliveBandBeacon = new AliveBandBeacon(_bandImp);
        totalSongTypes = uint8(_songImps.length);
        adminAddress = _admin;
        unchecked {
            for (uint8 i = 0; i < totalSongTypes; i++) {
                uint256 tempMaxMint;
                if (_maxMintAmountsPerTx[i] != 0) {
                    tempMaxMint = _maxMintAmountsPerTx[i];
                } else {
                    tempMaxMint = initialMaxMintAmountPerTx;
                }
                aliveSongByType[i + 1] = AliveSongImp(
                    _songImps[i],
                   tempMaxMint,
                    new AliveSongBeacon(_songImps[i]),
                    1
                );
            }
        }

        splitsAddress = _splitsAddress;
        bandVersion = 1;
        registryVersion = 1;
        houseVersion = 1;
    }
