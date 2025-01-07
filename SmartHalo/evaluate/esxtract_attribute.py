import os
import json
from openpyxl import Workbook
import pdb
# 创建一个新的工作簿
wb = Workbook()
 
# 选择默认的工作表
ws = wb.active
 

ws.append(["合约","反编译中状态变量","反编译中状态变量属性","以此类推...."])
all_dict={}
for adir in os.listdir('./new_result'):
    #if not adir=='0xb0ae0095627fb85a78070cdecb310ecdfbd8b58d':
    #    continue
    var_list=[]
    var_list.append(adir+'.sol')
    for file in os.listdir('./new_result/'+adir):
        var_dict={}
        filepath=os.path.join('./new_result/'+adir,file)
        if file =='Type&Border&Name.txt':
            continue
        var= file.split('.')[0]
        state=''
        if var=='{' or var=='' or var=='MEM':
            continue
        with open(filepath,'r') as f:
            lines=f.readlines()
        for line in lines:
            if var in line and ("asset" in line or  "router" in line or "fees" in line  or "flag" in line or  "address" in line or "limit" in line or "others" in line  or "Asset" in line or  "Router" in line or "Fees" in line  or "Flag" in line or  "Address" in line or "Limit" in line or "Others" in line):
                #print(line)
                #pdb.set_trace()
                if 'Contract Attribute' in line:
                    line=line.split('Contract Attribute')[1]
                    if "asset" in line or "Asset" in line:
                        state= "asset"
                    elif "router" in line or  "Router" in line:
                        state= "router"
                    elif "fees" in line or  "Fees" in line: 
                        state= "fees"
                    elif "flag" in line or  "Flag" in line:
                        state= "flag"
                    elif "address" in line or  "Address" in line:
                        state= "address"
                    elif "limit" in line or  "Limit" in line:
                        state= "limit"
                    elif"others" in line or  "Others" in line:
                        state= "others"
                    break
                else:
                    if "asset" in line or "Asset" in line:
                        state= "asset"
                    elif "router" in line or  "Router" in line:
                        state= "router"
                    elif "fees" in line or  "Fees" in line: 
                        state= "fees"
                    elif "flag" in line or  "Flag" in line:
                        state= "flag"
                    elif "address" in line or  "Address" in line:
                        state= "address"
                    elif "limit" in line or  "Limit" in line:
                        state= "limit"
                    elif"others" in line or  "Others" in line:
                        state= "others"
                    break
        if  state=='':
            continue
        else:
            var_list.append(var)
            var_list.append(state)
            
    ws.append(var_list)
wb.save('optim_attribute2.xlsx')