    function executeAction(

        bytes[] memory _callData,

        bytes[] memory _subData,

        uint8[] memory _paramMapping,

        bytes32[] memory _returnValues

    ) public payable virtual override returns (bytes32) {

        Params memory params = parseInputs(_callData);

        params.from = _parseParamAddr(params.from, _paramMapping[0], _subData, _returnValues);

        params.to = _parseParamAddr(params.to, _paramMapping[1], _subData, _returnValues);

        params.amounts[0] = _parseParamUint(params.amounts[0], _paramMapping[2], _subData, _returnValues);

        params.amounts[1] = _parseParamUint(params.amounts[1], _paramMapping[3], _subData, _returnValues);

        params.minMintAmount = _parseParamUint(params.minMintAmount, _paramMapping[4], _subData, _returnValues);



        uint256 receivedLp = _curveDeposit(params);

        return bytes32(receivedLp);

    }
