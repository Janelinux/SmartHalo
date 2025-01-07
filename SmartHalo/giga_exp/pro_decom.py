import os
path='/pro/decom/decomplie'
for file in os.listdir(path+'/compare_function_boroder'):
    with open(path+'/DecompiledCode/'+file+'.sol','r') as f:
        lines=f.readlines()
    new='contract OptimizedContract {'
    for line in lines:
        new+=line
    new+='}'
    with open(path+'/giga_exp/new_depliedcode/'+file+'.sol','w') as f:
        f.writelines(new)