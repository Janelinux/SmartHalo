import os,subprocess
a=0
b=0
for file in os.listdir('./new_depliedcode'):
    try:
        #err_msg=e.stderr.split('-->')[0]
        #msg=get_completion('this is the error messge of the code when it is compling, please modify your return code before by the error messege. '+err_msg,session)
        #print(session)
        #if msg.startswith('```solidity'):
            #with open('/pro/decom/decomplie/solidity/'+file+'/'+name+'.sol','w') as f:
                #f.write(msg[11:-3])
            #with open('/pro/decom/decomplie/ast/'+file[:-4]+'.json','w') as outfile:    
            result = subprocess.run(
                ['sudo','sol-ast-compile','/pro/decom/decomplie/new_depliedcode/'+file,'--raw'],  
                check=True,            
                stdout=subprocess.PIPE, 
                stderr=subprocess.PIPE, 
                text=True               
            )
            a+=1
    except subprocess.CalledProcessError as e:
        #print(session)
        b+=1
        #with open('/pro/decom/decomplie/err_msg/'+file+'/'+name+'.txt','w') as f:
        #    f.write(e.stderr)
        #os.system('rm -rf '+'/pro/decom/decomplie/solidity/'+file+'/'+name+'.sol')
print('{}, {} ,{}'.format(a,b,a/(a+b)))