from openai import OpenAI
import os,json
import subprocess

import threading
from time import sleep,ctime

#os.environ["http_proxy"] = "http://localhost:7890"
#os.environ["https_proxy"] = "http://localhost:7890"
client = OpenAI(
    api_key="sk-EBdrXGdk8UqM6fq6pt5dDVIZD9qVm4nP7ND0fjf5rGtMBe6x",
    base_url="https://api.chatanywhere.tech/v1"
)

def func_split(file):
    all_func=[]
    
    all_func_name=[]
    with open(file,'r') as f:
        all_line=f.readlines()
    line_no=0
    while line_no<len(all_line):
        if all_line[line_no].strip().startswith('function ') and '__function_selector__' not in all_line[line_no]:
            function_name=all_line[line_no].strip().split(' ')[1].split('(')[0]
            function_content=""
            end_index=0
            flag=False
            
            first=False
            while 1:
                if first==True and flag==False and end_index==0 and 'function' in all_line[line_no]:
                    break
                if '{' in all_line[line_no]:
                    flag=True
                    end_index+=1
                if '}' in all_line[line_no]:
                    end_index-=1
                if flag==False and end_index==0 and 'function' in all_line[line_no]:
                    first=True
                    
                
                if flag==True and end_index==0:
                    function_content+=all_line[line_no]
                    line_no+=1
                    break
                function_content+=all_line[line_no]
                line_no+=1
            #if first==True:
                #continue
            all_func.append(function_content)
            all_func_name.append(function_name)
        else:
            line_no+=1
    return all_func,all_func_name



def get_completion(prompt,session, model = "gpt-4o-mini"):

    session.append({"role":"user", "content":prompt})   #在会话中加入user的prompt   
    
    response = client.chat.completions.create(
        model = model, 
        messages = session
    )#基于会话，获取assistant的回复

    msg = response.choices[0].message.content   #获取assistant的回复
    session.append({"role":"assistant", "content":msg}) #在会话中加入assistant的回复
    return msg


def display_cmd_output(command):
    # 执行CMD命令并捕获输出结果
    result = os.popen(command).read()
    # 显示CMD输出结果
    return result


def proprecess(file,content,name):
    
    
    session = [
    {
        "role": "system",
        "content": "We will provide solidity code or compile error messege, Please fine-tune the following solidity code without changing the number or name of the variables to help it pass solc compilation, returns only the fine-tuned code and no-other things, please remember what we provide you is a function,you should put it in a contract to ensure it's to pass complie. If your return code can't be complied, we will provide the complie error messege. When we provide you compile error messege,please fine-tune the solidity code you provided before according the compile error messege to help it pass solc compilation",
    }
    ]
    j=0

    result=''

    try:
        msg=get_completion(content,session)
        #print(session)
        if msg.startswith('```solidity'):
            with open('/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+name+'.sol','w') as f:
                f.write(msg[11:-3])
            with open('/pro/decom/SmartHelme/ast/'+file[:-4]+'/'+name+'.json','w') as outfile :  
                result = subprocess.run(
                    ['sudo','sol-ast-compile','/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+name+'.sol','--raw'],  
                    check=True,            
                    stdout=outfile, 
                    stderr=subprocess.PIPE, 
                    text=True               
                )
            

    except subprocess.CalledProcessError as e:

        try:
            err_msg=e.stderr.split('-->')[0]
            msg=get_completion('this is the error messge of the code when it is compling, please modify your return code before by the error messege. '+err_msg,session)
            #print(session)
            if msg.startswith('```solidity'):
                with open('/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+name+'.sol','w') as f:
                    f.write(msg[11:-3])
                with open('/pro/decom/SmartHelme/ast/'+file[:-4]+'/'+name+'.json','w') as outfile:    
                    result = subprocess.run(
                        ['sudo','sol-ast-compile','/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+name+'.sol','--raw'],  
                        check=True,            
                        stdout=outfile, 
                        stderr=subprocess.PIPE, 
                        text=True               
                    )
        
        except subprocess.CalledProcessError as e:
            #print(session)
            with open('/pro/decom/SmartHelme/err_msg/'+file[:-4]+'/'+name+'.txt','w') as f:
                f.write(e.stderr)
            os.system('rm -rf '+'/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+name+'.sol')
        
        
if __name__=='__main__': 
    for file in os.listdir('/pro/decom/SmartHelme/demo'):
        #if file!='0x0ce668d271b8016a785bf146e58739f432300b12.sol':
            #continue
        os.makedirs('/pro/decom/SmartHelme/solidity/'+file[:-4])
        os.makedirs('/pro/decom/SmartHelme/ast/'+file[:-4])
        os.makedirs('/pro/decom/SmartHelme/err_msg/'+file[:-4])
        all_func,all_func_name=func_split('/pro/decom/SmartHelme/demo/'+file)
        for i in range(0,len(all_func)):
            #if all_func_name[i]!='buyToken':
                #continue
            t1 = threading.Thread(target=proprecess,args=(file,all_func[i],all_func_name[i])) 
            t1.start() 
        while True:
            length = len(threading.enumerate())
            print('当前运行的线程数为：%d'%length)
            if length<=10:
                break
            sleep(10)
    while True:
        length = len(threading.enumerate())
        print('当前运行的线程数为：%d'%length)
        if length<=1:
            break
        sleep(10)