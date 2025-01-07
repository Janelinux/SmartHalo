import os
import shutil,subprocess
from api import *
 
def method_cfg(method_list,path,file):
    #print(path,file)
    all_func,all_func_name=func_split(path+'/'+file)
    threads = []
    flag=False
    filename=file[:-4]
     
    if not os.path.exists('/pro/decom/SmartHelme/cfg/'+filename):
        os.makedirs('/pro/decom/SmartHelme/cfg/'+filename)
    if not os.path.exists('/pro/decom/SmartHelme/IR/'+filename):
        os.makedirs('/pro/decom/SmartHelme/IR/'+filename)
    if not os.path.exists('/pro/decom/SmartHelme/data_depend/'+filename):
        os.makedirs('/pro/decom/SmartHelme/data_depend/'+filename)
    for method in method_list:
        if  os.path.exists('/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+method+'.sol'):
            continue 
        flag=True
        if not os.path.exists('/pro/decom/SmartHelme/cfg/'+filename):
            os.makedirs('/pro/decom/SmartHelme/solidity/'+file[:-4])
        if not os.path.exists('/pro/decom/SmartHelme/ast/'+filename):
            os.makedirs('/pro/decom/SmartHelme/ast/'+file[:-4])
        if not os.path.exists('/pro/decom/SmartHelme/err_msg/'+filename):
            os.makedirs('mkdir /pro/decom/SmartHelme/err_msg/'+file[:-4])
        
        
        
        index=all_func_name.index(method)
        t1 = threading.Thread(target=proprecess,args=(file,all_func[index],all_func_name[index])) 
        t1.start() 
        threads.append(t1)
    if flag==False:
        return
    for thread in threads:
        thread.join()
    file_path=os.path.join('/pro/decom/SmartHelme/solidity',file[:-4])
    
    
    all_slither(file_path)
    

def allSv(filepath):
    all_sv=[]
    with open(filepath,'r') as f:
        all_line=f.readlines()
    for line in all_line:
        if line.startswith('    ') and not line.startswith('     ') and line!='    \n':
            line=line.strip()
            if line.startswith('function'):
                continue
            elif line.startswith('event'):
                continue
            elif line.startswith('}'):
                continue
            elif line.startswith('modifier'):
                continue
            elif line.startswith('constructor'):
                continue
            elif line.startswith('error'):
                continue
            elif line.startswith('/'):
                continue
            elif line.startswith(')'):
                continue
            elif line.startswith('('):
                continue
            else:
                line=line.split(';')[0]
                line=line.split(' = ')[0]
                sv=line.strip().split(' ')[-1]
                if sv=='':
                    continue
                if '{' in sv:
                    continue
                if '(' in sv:
                    continue
                all_sv.append(sv)
    return all_sv         

def all_slither(filepath):
    exist_path=filepath.split('/')[-1].strip()
    all_file=[]
    for file in os.listdir('/pro/decom/SmartHelme/cfg/'+exist_path):
        all_file.append(file.split('-')[0])
    
    for file in os.listdir(filepath):
        if file in all_file:
           
            continue
        with open(filepath+'/'+file) as f:
            all_line=f.readlines()
        version=''
        for line in all_line:
            if 'pragma solidity' in line :
                print(line)
                version=line.strip().split(';')[0].split()[-1]
                if '^' in version:
                    version=version.split('^')[1].strip()
                elif '>=' in version:
                    version=version.split('>=')[1].strip()
                elif '==' in version:
                    version=version.split('>=')[1].strip()
                elif '=' in version:
                    version=version.split('=')[1].strip()
                print(version)
                break
                
        if version!='':
            #os.system('solc-select install '+version)
            os.system('solc-select use '+version)
        cfg(exist_path,filepath+'/'+file)
        
        print(filepath+'/'+file,)

    for file in os.listdir(filepath):
        if file.endswith('dot'):
            shutil.move(filepath+'/'+file, '/pro/decom/SmartHelme/cfg/'+exist_path+'/'+file)

def cfg(exist_path,file):
    os.system('slither '+file+' --print cfg')

def IR(exist_path,file):

    with open('/pro/decom/SmartHelme/IR/'+exist_path+'/'+file.split('/')[-1][:-4]+'.txt','w') as outfile :  
        result = subprocess.run(
            ['slither',file,'--print','slithir'],  
            capture_output=True,
            text=True,               
        )
        outfile.write(result.stdout)
        
        

def data_depend(exist_path,file):
    with open('/pro/decom/SmartHelme/data_depend/'+exist_path+'/'+file.split('/')[-1][:-4]+'.txt','w') as outfile :  
        result = subprocess.run(
            ['slither',file,'--print','data-dependency'],  
            capture_output=True,
            text=True,              
        )
        outfile.write(result.stdout)

if __name__=='__main__':
    for filename in os.listdir('/pro/decom/SmartHelme/solidity'):
        file_path=os.path.join('/pro/decom/SmartHelme/solidity',filename)
        if not os.path.exists('/pro/decom/SmartHelme/cfg/'+filename):
            os.makedirs('/pro/decom/SmartHelme/cfg/'+filename)
        if not os.path.exists('/pro/decom/SmartHelme/IR/'+filename):
            os.makedirs('/pro/decom/SmartHelme/IR/'+filename)
        if not os.path.exists('/pro/decom/SmartHelme/data_depend/'+filename):
            os.makedirs('/pro/decom/SmartHelme/data_depend/'+filename)

    all_slither(file_path)