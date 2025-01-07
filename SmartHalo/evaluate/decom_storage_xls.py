import os
from openpyxl import Workbook
import pdb
# 创建一个新的工作簿
wb = Workbook()
 
# 选择默认的工作表
ws = wb.active

ws.append(["合约","反编译码中状态变量","反编译码中储存位置","以此类推...."])
for file in os.listdir('./solidity'):
    all_state=[]
    all_state.append(file+'.sol')
    file_path=os.path.join('./decomplied_code',file+'.sol')
    with open(file_path,"r") as f:
        for line in f:
            if "contract Contract {" in line:
                    continue
            elif "function" in line:
                    break
            elif "}" in line:
                    break
            elif "Events" in line:
                break
            elif line=="\n":
                    continue
            else:
                line=line.split("//")
                for str in line:
                    if ";" in str:
                        str=str.split()
                        all_state.append(str[len(str)-1][:-1])
                    elif 'STORAGE' in str:
                        all_state.append(str.strip())
    ws.append(all_state)
wb.save('storage_decom.xlsx')
                    
                