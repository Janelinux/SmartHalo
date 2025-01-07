    function executeAction(

        bytes memory _callData,

        bytes32[] memory _subData,

        uint8[] memory _paramMapping,

        bytes32[] memory _returnValues

    ) public payable virtual override returns (bytes32) {

        Params memory params = parseInputs(_callData);



        params.market = _parseParamAddr(params.market, _paramMapping[0], _subData, _returnValues);

        params.from = _parseParamAddr(params.from, _paramMapping[1], _subData, _returnValues);

        params.to = _parseParamAddr(params.to, _paramMapping[2], _subData, _returnValues);

        params.tokenAddr = _parseParamAddr(params.tokenAddr, _paramMapping[3], _subData, _returnValues);

        params.amount = _parseParamUint(params.amount, _paramMapping[4], _subData, _returnValues);



        (uint256 withdrawAmount, bytes memory logData) = _transfer(params.market, params.from, params.to, params.tokenAddr, params.amount);

        emit ActionEvent("CompV3Transfer", logData);

        return bytes32(withdrawAmount);

    }
