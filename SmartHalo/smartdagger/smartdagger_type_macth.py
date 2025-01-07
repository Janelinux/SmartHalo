import os
import json
from openpyxl import Workbook
import pdb
# 创建一个新的工作簿
wb = Workbook()
 
# 选择默认的工作表
ws = wb.active
 

ws.append(["合约","反编译中状态变量","反编译中状态变量类型","以此类推...."])
wb2 = Workbook()
 
# 选择默认的工作表
ws2= wb2.active
 

ws2.append(["合约","反编译中状态变量","反编译中状态变量属性","以此类推...."])
#all_dict={}
#all_dict2={}
for contract in os.listdir('./smartdagger_result'):
    var_dict=[]
    var_dict2=[]
    var_dict.append(contract+'.sol')
    var_dict2.append(contract+'.sol')
    for file in os.listdir('./smartdagger_result/'+contract):
        filepath=os.path.join('./smartdagger_result',contract,file)
        var_name=file.split('.')[0].strip()
        var_dict.append(var_name)
        var_dict2.append(var_name)
        with open(filepath,'r') as f:
            lines=f.readlines()
            for line in lines:
                if ':' in line:
                    left=line.strip().split(':')[0].strip()
                    right=line.strip().split(':')[1].strip()
                    if '"' in left:
                        left=left.split('"')[1].strip()
                    else:
                        left=left.strip()
                    if '"' in right:
                        right=right.split('"')[1].strip()
                    else:
                        right=right.strip()
                    if 'attribute' in left or 'property' in left:
                        var_dict2.append(right)
                    elif 'type' in left:
                        var_dict.append(right)
    print(var_dict)
    print(var_dict2)
    ws.append(var_dict)
    ws2.append(var_dict2)
wb.save('smartdagger_type.xlsx')
wb2.save('smartdagger_attribute.xlsx')