    function setMainContract(address _c) public onlyOwner returns (bool succeeded) {

        require(_c != address(this), "VELOXPROXY_CIRCULAR_REFERENCE");

        require(isContract(_c), "VELOXPROXY_NOT_CONTRACT");

        MAIN_CONTRACT = _c;

        return true;

    }
