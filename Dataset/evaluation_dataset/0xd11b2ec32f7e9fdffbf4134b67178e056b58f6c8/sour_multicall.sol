    function multicall(CallData[] calldata data) external payable returns (bytes[] memory results) {
        results = new bytes[](data.length);
        for (uint i = 0; i < data.length; i++) {
            results[i] = Address.functionCall(data[i].target, data[i].data);
        }
        return results;
    }
