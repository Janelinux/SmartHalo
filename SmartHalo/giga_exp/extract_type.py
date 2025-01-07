import os
import json
from openpyxl import Workbook
import pdb
# 创建一个新的工作簿
wb = Workbook()
 
# 选择默认的工作表
ws = wb.active
 

ws.append(["合约","反编译中状态变量","反编译中状态变量属性","以此类推...."])

for file in os.listdir("./new_depliedcode"):
        var_type=[]
        var_type.append(file)
       
        with open("./new_depliedcode/"+file,"r") as f:
                for line in f:
                        if "contract Contract {" in line:
                                continue
                        elif "function" in line:
                                break
                        elif "}" in line:
                                break
                        elif line=="\n":
                                continue
                        else:
                                line=line.split("//")
                                for str in line:
                                        if ";" in str:
                                            str=str.split()
                                            var_type.append(str[len(str)-1][:-1])
                                            var_type.append(' '.join(str[:-1]))
        ws.append(var_type)                                   

wb.save("./gigahorse.xlsx")