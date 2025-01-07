import json,os
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
            if not os.path.exists('./samrtdagger_exp/'+contract):
                os.mkdir('./samrtdagger_exp/'+contract)
            with open('./samrtdagger_exp/'+contract+'/'+var_name+'.txt','w',encoding='utf-8') as f:
                f.write('状态变量名字为：{}，类型为：{}'.format(var_name,var_type))