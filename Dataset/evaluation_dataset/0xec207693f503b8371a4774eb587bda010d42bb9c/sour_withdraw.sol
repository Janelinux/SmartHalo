    function withdraw() external onlyOwner nonReentrant {
        uint256 balance = address(this).balance;
        uint256 split1 = balance / 100 * 33;
        uint256 split2 = balance / 100 * 33;
        uint256 split3 = balance - split1 - split2;
        (bool s1, ) = _owner.call{value: split1}("");
        (bool s2, ) = _owner2.call{value: split2}("");
        (bool s3, ) = _owner3.call{value: split3}("");
    }
