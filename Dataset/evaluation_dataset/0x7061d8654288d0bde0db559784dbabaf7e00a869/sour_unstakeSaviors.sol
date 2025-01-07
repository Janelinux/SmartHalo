    function unstakeSaviors(uint256[] memory saviorIds) external updateRewards(msg.sender) {

        UserStake storage user = saviorUsers[msg.sender];



        for(uint256 i; i < saviorIds.length;) {

            uint256 saviorId = saviorIds[i];

            require(user.saviors.contains(saviorId), "NOT_OWNER");

            saviorUsers[msg.sender].saviors.remove(saviorId);

            saviorNft.transferFrom(address(this), msg.sender, saviorId);

            unchecked {

                ++i;

            }

        }

    }
