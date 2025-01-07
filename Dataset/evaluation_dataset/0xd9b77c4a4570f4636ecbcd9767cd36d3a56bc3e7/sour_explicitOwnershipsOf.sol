    function explicitOwnershipsOf(uint256[] memory tokenIds) external view override returns (TokenOwnership[] memory) {

        unchecked {

            uint256 tokenIdsLength = tokenIds.length;

            TokenOwnership[] memory ownerships = new TokenOwnership[](tokenIdsLength);

            for (uint256 i; i != tokenIdsLength; ++i) {

                ownerships[i] = explicitOwnershipOf(tokenIds[i]);

            }

            return ownerships;

        }

    }
