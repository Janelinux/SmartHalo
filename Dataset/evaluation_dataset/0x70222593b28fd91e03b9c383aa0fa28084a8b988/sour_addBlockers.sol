    function addBlockers(NewBlocker[] memory newBlockers) public onlyOwner{
        for(uint i=0; i<newBlockers.length; i++){
            Blocker storage blocker = blockers[newBlockers[i].id];
            blocker.handle = newBlockers[i].handle;
            blocker.asset = newBlockers[i].asset;
            blocker.image = newBlockers[i].image;
            blocker.name = newBlockers[i].name;
            if(!blocker.exists){
                blocker.exists = true;
                blocker.numBlocks = 0;
            }
            
        }
    }
