    function createAcl(address targetContract, address safe, address module, uint256 nonce)
        external
        returns (address acl)
    {
        require(targetContract != address(0), "Invalid target address");
        require(safe != address(0), "Invalid safe address");
        require(module != address(0), "Invalid module address");

        address implementation = contractToAclImplementation[targetContract];
        require(implementation != address(0), "Invalid implementation address");

        bytes memory bytecode = type(ERC1967Proxy).creationCode;
        bytes memory initData = abi.encodeWithSignature('initialize(address,address)', safe, module);

        bytes memory creationCode = abi.encodePacked(
            bytecode,
            abi.encode(implementation, initData)
        );
        bytes32 salt = keccak256(abi.encodePacked(safe, address(this), nonce));

        assembly {
            acl := create2(0, add(creationCode, 32), mload(creationCode), salt)
        }
        require(acl != address(0), "Failed to create acl");
        emit AclCreated(safe, module, targetContract, acl);

        acls.push(acl);
        moduleContractToAcl[module][targetContract] = acl;
        aclToModule[acl] = module;
        aclToContract[acl] = targetContract;
    }
