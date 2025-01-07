import os,json
with open('./pred_mt2.json','r',encoding='utf-8') as f:
    data=json.load(f)
for contract in data:
    #print(contract)
    funcs=data[contract]
    for func in funcs:
        #print(func[var])
        vars=funcs[func]
        for var in vars:
            var_type=vars[var][0]
            var_name=vars[var][1]
            if os.path.exists('./smartdagger_result/'+contract+'/'+var_name+'.txt'):
                os.rename('./smartdagger_result/'+contract+'/'+var_name+'.txt','./smartdagger_result/'+contract+'/'+var+'.txt')