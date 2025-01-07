from api import *
import os
for cotract in os.listdir('./samrtdagger_exp'):
    for file in  os.listdir('./samrtdagger_exp/'+cotract):
        session = [
        {
            "role": "system",
            "content": "我们会提供给你solidity的一个状态变量名字和它的类型，你认为他可能是['bool', 'bytes1', 'bytes2', 'bytes3', 'bytes4', 'bytes5', 'bytes6', 'bytes7', 'bytes8', 'bytes9', 'bytes10', 'bytes11', 'bytes12', 'bytes13', 'bytes14', 'bytes15', 'bytes16', 'bytes17', 'bytes18', 'bytes19', 'bytes20', 'bytes21', 'bytes22', 'bytes23', 'bytes24', 'bytes25', 'bytes26', 'bytes27', 'bytes28', 'bytes29', 'bytes30', 'bytes31', 'bytes32', 'address', 'fixed', 'unfixed', 'string', 'memory', 'storage', 'calldata', 'int8', 'int16', 'int24', 'int32', 'int40', 'int48', 'int56', 'int64', 'int72', 'int80', 'int88', 'int96', 'int104', 'int112', 'int120', 'int128', 'int136', 'int144', 'int152', 'int160', 'int168', 'int176', 'int184', 'int192', 'int200', 'int208', 'int216', 'int224', 'int232', 'int240', 'int248', 'int256', 'uint8', 'uint16', 'uint24', 'uint32', 'uint40', 'uint48', 'uint56', 'uint64', 'uint72', 'uint80', 'uint88', 'uint96', 'uint104', 'uint112', 'uint120', 'uint128', 'uint136', 'uint144', 'uint152', 'uint160', 'uint168', 'uint176', 'uint184', 'uint192', 'uint200', 'uint208', 'uint216', 'uint224', 'uint232', 'uint240', 'uint248', 'uint256']中的哪种类型，你认为该状态变量的属性为['asset', 'router', 'fees', 'flag', 'address', 'limit']哪个属性。只以json的格式输出"
        }
        ]
        
        filepath=os.path.join('./samrtdagger_exp',cotract,file)
        with open(filepath,'r',encoding='utf-8') as f:
            lines=f.readlines()
        question=''
        for line in lines:
            question+=line
        #print(question)
        msg=get_completion(question,session)
        if not os.path.exists('./smartdagger_result/'+cotract):
            os.makedirs('./smartdagger_result/'+cotract)
        with open('./smartdagger_result/'+cotract+'/'+file,'w',encoding='utf-8') as f:
            f.writelines(msg)