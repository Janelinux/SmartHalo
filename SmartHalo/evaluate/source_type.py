import xlwt,xlrd
import os
import pdb
from openpyxl import Workbook
import pdb
# 创建一个新的工作簿
wb = Workbook()
 
# 选择默认的工作表
ws = wb.active
 

ws.append(["合约","源码中状态变量","源码中状态变量类型","以此类推...."])
for file in os.listdir('/pro/decom/decomplie/solidity'):
    #if file!='0x67a560deb67addf94b8ebee022a5716782dbf244':
    #    continue
    source_list=[]  
    type_list=[]
    i=1
    name_type={}
    
    with open("/pro/decom/decomplie/SourceCode/"+file+'.sol','r') as f:
        all_line=f.readlines()
        
        for line in all_line:  
            
            line=line.strip().split('//')[0]
            if ("private " in line or "public " in line or "constant " in line or "internal " in line or "mapping" in line or "mapping" in line or line.strip().startswith('uint') or line.strip().startswith('address') or line.strip().startswith('bool')) and "function " not in line and "*" not in line and '{' not in line :
                #pdb.set_trace()
                line=line.split(";")
                for str in line:
                    if  "private" in str or "public" in str or "constant" in str or "internal" in str or "mapping" in line or str.strip().startswith('uint') or str.strip().startswith('address') or str.strip().startswith('bool'):
                        if "mapping" in str:
                            str=str.strip().split()
                            name_dict={str[len(str)-1].strip():' '.join(str[:-2]).strip()}
                            name_type.update(name_dict)
                            
                        else:
                            str=str.split("=")
                            for str2 in str:
                                if  "private" in str2 or "public" in str2 or "constant" in str2 or "internal" in str2  or str2.strip().startswith('uint') or str2.strip().startswith('address') or  str2.strip().startswith('bool'):
                                    str2=str2.strip().split()
                                    if str2[0].strip()=='':
                                        continue
                                    name_dict={str2[len(str2)-1].strip():str2[0].strip()}
                                    name_type.update(name_dict)
    all=[]
    all.append(file+'.sol')
    for key in name_type:
        all.append(key)
        all.append(name_type[key])
    ws.append(all)
wb.save("source.xlsx")
