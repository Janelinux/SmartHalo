    function advanceEpoch() public {
        uint256 currentEpoch = getCurrentEpoch();

        if (epoch >= currentEpoch) {
            return;
        }

        // finalize the current epoch and take the fee from the side that made profits this epoch
        uint256 seniorProfits = getCurrentSeniorProfits();
        uint256 juniorProfits = getCurrentJuniorProfits();
        if (seniorProfits > 0) {
            uint256 fee = seniorProfits * feesPercentage / scaleFactor;
            epochJuniorLiquidity = epochJuniorLiquidity - seniorProfits;
            epochSeniorLiquidity = epochSeniorLiquidity + (seniorProfits - fee);
        } else if (juniorProfits > 0) {
            uint256 fee = juniorProfits * feesPercentage / scaleFactor;
            epochSeniorLiquidity = epochSeniorLiquidity - juniorProfits;
            epochJuniorLiquidity = epochJuniorLiquidity + (juniorProfits - fee);
        }

        emit EpochEnd(epoch, juniorProfits, seniorProfits);

        // set the epoch entry price to the current price, effectively resetting profits and losses to 0
        epochEntryPrice = priceOracle.getPrice();

        uint256 juniorUnderlyingOut = _processJuniorQueues();
        uint256 seniorUnderlyingOut = _processSeniorQueues();

        // move the liquidity from the entry queue to the epoch balance & the exited liquidity from the epoch to the exit queue
        epochSeniorLiquidity = epochSeniorLiquidity - seniorUnderlyingOut + queuedSeniorsUnderlyingIn;
        queuedSeniorsUnderlyingOut += seniorUnderlyingOut;
        queuedSeniorsUnderlyingIn = 0;

        epochJuniorLiquidity = epochJuniorLiquidity - juniorUnderlyingOut + queuedJuniorsUnderlyingIn;
        queuedJuniorsUnderlyingOut += juniorUnderlyingOut;
        queuedJuniorsUnderlyingIn = 0;

        // reset the queue of tokens to burn
        queuedJuniorTokensBurn = 0;
        queuedSeniorTokensBurn = 0;

        // update the upside exposure and downside protection rates based on the new pool composition (after processing the entry and exit queues)
        (epochUpsideExposureRate, epochDownsideProtectionRate) = seniorRateModel.getRates(epochJuniorLiquidity, epochSeniorLiquidity);

        // set the stored epoch to the current epoch
        epoch = currentEpoch;
    }
