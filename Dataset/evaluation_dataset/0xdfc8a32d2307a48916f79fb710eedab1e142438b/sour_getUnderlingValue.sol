    function getUnderlingValue(address _oracle, uint _timestamp, uint[] memory _roundHints) public override view returns(int) {

        require(_timestamp > 0, "Zero timestamp");

        require(_oracle != address(0), "Zero oracle");

        require(_roundHints.length == 1, "Wrong number of hints");

        AggregatorV3Interface oracle = AggregatorV3Interface(_oracle);



        uint80 latestRoundId;

        (latestRoundId,,,,) = oracle.latestRoundData();



        uint256 phaseId;

        (phaseId,) = parseIds(latestRoundId);



        uint80 roundHint = uint80(_roundHints[0]);

        require(roundHint > 0, "Zero hint");

        requirePhaseFor(roundHint, phaseId);



        int256 hintAnswer;

        uint256 hintTimestamp;

        (,hintAnswer,,hintTimestamp,) = oracle.getRoundData(roundHint);



        if(hintTimestamp == 0 || hintTimestamp > _timestamp) {

            revert('Incorrect hint');

        }



        uint256 timestampNext = 0;

        if(roundHint + 1 <= latestRoundId) {

            (,,,timestampNext,) = oracle.getRoundData(roundHint + 1);

            if(timestampNext > 0 && timestampNext <= _timestamp) {

                revert("Later round exists");

            }

        }



        if(timestampNext == 0 || (timestampNext > 0 && timestampNext > _timestamp)){

            return hintAnswer;

        }



        return NEGATIVE_INFINITY;

    }
