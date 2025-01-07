function getPriorVotes(address account, uint256 blockNumber) public payable { 

    require(msg.data.length - 4 >= 64);

    require(blockNumber < block.number, Error('MOONCAKE::getPriorVotes: not yet determined'));

    if (_numCheckpoints[account] != 0) {

        if (_checkpoints[account][uint32(_numCheckpoints[account] - 1)].field0_0_3 > blockNumber) {

            if (_checkpoints[account][uint32(0)].field0_0_3 <= blockNumber) {

                v0 = v1 = 0;

                v2 = v3 = _numCheckpoints[account] - 1;

                while (uint32(v2) > uint32(v0)) {

                    assert(2);

                    v0 = v2 - (uint32(v2 - v0) >> 1);

                    MEM[MEM[64]] = uint32(0);

                    MEM[32 + MEM[64]] = 0;

                    v4 = new struct(2);

                    v4.word0 = _checkpoints[account][uint32(v0)].field0_0_3;

                    v4.word1 = _checkpoints[account][uint32(v0)].field1;

                    if (uint32(v4.word0) != blockNumber) {

                        if (uint32(v4.word0) >= blockNumber) {

                            v2 = v0 - 1;

                        }

                    } else {

                        v5 = v6 = v4.word1;

                    }

                }

                v5 = v7 = _checkpoints[account][uint32(v0)].field1;

            } else {

                v5 = v8 = 0;

            }

        } else {

            v5 = v9 = _checkpoints[account][uint32(_numCheckpoints[account] - 1)].field1;

        }

    } else {

        v5 = v10 = 0;

    }

    return v5;

}
