    function setPrefixAndSuffi(string calldata _uriPrefix, string calldata _uriSuffix) external onlyRole(DEFAULT_ADMIN_ROLE){



        UriPrefix3d = _uriPrefix;

        UriSuffix3d = _uriSuffix;



    }
