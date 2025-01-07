from PromptGeneration import *
from slither import *
from api import *
def TypeDependencySpecification (ModifyTypeDependency, MethodType, OptimizationType):
    SpecifiedTypeDependency = []
    if (OptimizationType == "Type&Border&Name"):
        for element in ModifyTypeDependency:
            k = len (element)
            if (element[k-1] in MethodType ):
                SpecifiedTypeDependency.append (element)
    return [SpecifiedTypeDependency]

def StateDependencySpecification (OptimizationType, SDRWedge, ASD, MethodAttribute):
    SpecifiedSDRWedge = []    
    SpecifiedASD = []        
    if (OptimizationType == "Attribute"):
        for element in SDRWedge:
            #print("SDRWedge", SDRWedge)
            k = len (element)
            if (element[0] in MethodAttribute ):
                SpecifiedSDRWedge.append (element)
        for element in ASD:
            k = len (element)
            if (element[k-1] in MethodAttribute ):
                SpecifiedASD.append (element)
                

    return [SpecifiedSDRWedge, SpecifiedASD]


def DecompilationOptimizationforTypeBorderName (decompath, file, method, cfg_path, OptimizationType):
    b = ReadFile (decompath, file)
    [b, MethodList,StateVariable, CallGraph]=PreProcessing (b)
    print ("CallGraph", CallGraph)
    #need to determine context methods and generate the CFG for methods
    [MethodType, ContextPromptType] = ContextPromptGenerationforTypeBorderName (CallGraph, method, b, MethodList)
    if (len(MethodType)>0):
        MethodforCFG = MethodType
    #print("MethodforCFG", MethodforCFG)
    print(MethodforCFG)
    #method_cfg(MethodforCFG,path,file)
    [control_node_table, control_edge_table] = CFG_construction (cfg_path)
    [SDRWedge, ASD, MethodPair] = StateDependencyExtraction (control_node_table, StateVariable)
  
    [control_node_table] = control_node_table_process (control_node_table)
    [TypeDependency] = TypeDependencyExtraction (control_node_table, MethodList, CallGraph)
    
    [MethodType, ContextPromptType] = ContextPromptGenerationforTypeBorderName (CallGraph, method, b, MethodList)
    ContextPrompt = ContextPromptType
   
    [CandidatePrompt] = CandidatePromptGeneration (OptimizationType)
    
    [ModifyTypeDependency] = TDGGeneration (TypeDependency)
    
    [SpecifiedTypeDependency] = TypeDependencySpecification (ModifyTypeDependency, MethodType, OptimizationType)
    print ("SpecifiedTypeDependency", SpecifiedTypeDependency)
    [COTPrompt] = COTPromptGenerationforTypeBorderName (SpecifiedTypeDependency, OptimizationType) 
    return [COTPrompt, CandidatePrompt, ContextPrompt]


def DecompilationOptimizationforAttribute (path, file, Sv, cfg_path, OptimizationType):
    b = ReadFile (path, file)
    [b, MethodList,StateVariable, CallGraph]=PreProcessing (b)
    #need to determine context methods and generate the CFG for methods 
    [MethodforSv] = statedependencymethod (b, StateVariable, Sv, MethodList)
    
    if (len(MethodforSv)>0):
        MethodforCFG = MethodforSv
        #method_cfg(MethodforCFG,path,file)
    [control_node_table, control_edge_table] = CFG_construction (cfg_path)
    [SDRWedge, ASD, MethodPair] = StateDependencyExtraction (control_node_table, StateVariable)
  
    [control_node_table] = control_node_table_process (control_node_table)
    #[TypeDependency] = TypeDependencyExtraction (control_node_table, MethodList, CallGraph)

    [MethodAttribute, ContextPromptAttribute] = ContextPromptGenerationforAttribute (CallGraph, b, SDRWedge, Sv, MethodPair)
    ContextPrompt = ContextPromptAttribute
   
    [CandidatePrompt] = CandidatePromptGeneration (OptimizationType)
    
    [SpecifiedSDRWedge, SpecifiedASD] = StateDependencySpecification (OptimizationType, SDRWedge, ASD, MethodAttribute)
    
    [COTPrompt] = COTPromptGenerationforAttribute (SDRWedge, ASD, OptimizationType) 
    return [COTPrompt, CandidatePrompt, ContextPrompt]

def parll(path,file ,Sv,cfg_path,method):
    try:
        [COTPrompt, CandidatePrompt, ContextPrompt] = DecompilationOptimizationforAttribute (path, file, Sv, cfg_path, "Attribute")
        #print ("COTPrompt", COTPrompt)
        #print ("CandidatePrompt", CandidatePrompt)
        #print ("ContextPrompt", ContextPrompt)
        session = [
        {
            "role": "system",
            "content":  " We have established a candiatate list for the contract attribute" + str(CandidatePrompt) + " represened by the state variable. Please select one of these (i.e., candidate list) according to the usage of the state variables, and  annotate 'Contract Attribute' in the code to the right of the state variable as a comment, according to the following decompiled code and the notes we provide. The meaning of each of these candidate attributes is:limit includes variables that limit the maximum amount of money per transaction, the maximum amount that can be held in a single address, and so on、Fees: Transaction costs. flag: includes identifying whether the contract allows token exchange, whether an address is whitelisted, etc.address: on-chain address.asset: assets.router: routing address,includes the address of the routing contract that needs to be invoked for asset exchange, etc.Please assign attributes according to their usage according to the function ."
        
        },
        {
            "role": "user",
            "content":"uint256 stor_15_20_20; // STORAGE[0x15] bytes 20 to 20\nuint256 _owner; // STORAGE[0x0] bytes 0 to 19\nif (!stor_15_20_20) {require(_owner == address(varg2), Error('TOKEN: This account cannot send tokens until trading is enabled'))"
        },
        {
            "role":"assistant",
            "content":"uint256 stor_15_20_20; // STORAGE[0x15] bytes 20 to 20 // Contract Attribute: flag\nuint256 _owner; // STORAGE[0x0] bytes 0 to 19// Contract Attribute: address\n"
        }
        ]
        '''session = [
        {
            "role": "system",
            "content":  " We have established a candiatate list for the contract attribute" + str(CandidatePrompt) + " represented by the state variable. Please select one of these (i.e., candidate list) according to the usage of the state variables, and  annotate 'Contract Attribute' in the code to the right of the state variable as a comment, according to the following decompiled code and the notes we provide.Please assign attributes according to their usage in the function.\n",
        }
        ]'''
        #print(session)
        #msg="We have established a candiatate list for the contract attribute" + str(CandidatePrompt) + " represened by the state variable. Please select one of these (i.e., candidate list) according to the usage of the state variables, and  annotate 'Contract Attribute' in the code to the right of the state variable as a comment, according to the following decompiled code and the notes we provide.Please don'n assigne the 'others' attribute to a state variable. The meaning of each of these candidate attributes is:limit includes variables that limit the maximum amount of money per transaction, the maximum amount that can be held in a single address, and so on、Fees: Transaction costs. flag: includes identifying whether the contract allows token exchange, whether an address is whitelisted, etc.address: on-chain address.asset: assets.router: routing address,includes the address of the routing contract that needs to be invoked for asset exchange, etc.Please assign attributes according to their usage according to the function and you need'n to print function.\n"
        #msg+="Such as, we provided you follow decomplied code:\nuint256 stor_15_20_20; // STORAGE[0x15] bytes 20 to 20\nuint256 _owner; // STORAGE[0x0] bytes 0 to 19\nif (!stor_15_20_20) {\nrequire(_owner == address(varg2), Error('TOKEN: This account cannot send tokens until trading is enabled'))\n}\n......\n"
        #msg+="You answer is:\n uint256 stor_15_20_20; // STORAGE[0x15] bytes 20 to 20 // Contract Attribute: flag\nuint256 _owner; // STORAGE[0x0] bytes 0 to 19// Contract Attribute: address\n.......\n"
        AttributePrompt = 'The Code that you should proprecess is:\n'+ContextPrompt+'\n'
        originfunction=''
        if os.path.exists("/pro/decom/SmartHelme/solidity/"+file[:-4]+'/'+method+'.sol'):
            
            with open("/pro/decom/SmartHelme/solidity/"+file[:-4]+'/'+method+'.sol','r') as f:
                lines=f.readlines()
            for line in lines:
                originfunction+=line
        #print(1)
        #print(originfunction)
        if 'function' not in AttributePrompt:
            AttributePrompt+=originfunction+'\n'
        #AttributePrompt+='The follow is something you should note.\nNote: '  +COTPrompt
        #print(AttributePrompt)
        #print(AttributePrompt)
        msg=get_completion(AttributePrompt,session)
        msg=get_completion('The follow is something you should note.\nNote: '  +COTPrompt,session)
        #print(msg)
       # msg+=AttributePrompt
        print(2)
        print(msg)
        if not os.path.exists('/pro/decom/SmartHelme/result/'+file[:-4]):
            os.makedirs('/pro/decom/SmartHelme/result/'+file[:-4])
        with open('/pro/decom/SmartHelme/result/'+file[:-4]+'/'+Sv+'.txt','w') as f:
            f.writelines(msg)
    except Exception as e:
        print(str(e))
        if not os.path.exists('/pro/decom/SmartHelme/op_err/'+file[:-4]):
            os.makedirs('/pro/decom/SmartHelme/op_err/'+file[:-4])
            
        with open('/pro/decom/SmartHelme/op_err/'+file[:-4]+Sv+'.txt','w') as f:
            f.writelines(str(e))
path = "/pro/decom/SmartHelme/demo"                           # 设置路径
i=0
all_file=[]
#flag=False
j=0
for file in os.listdir(path):
    #if file !='0xa610f8843882fe4f1a235fdda4281d8fe379ea03':
    #    continue
    #if file=='0xc39a00d29851bad62e63601cbde12053fe233bd1':
    #     flag=True
    #if flag==False:
    #    continue
    
    file = file[:-4]+'.sol'
    print(file)
    #if not os.path.exists('/pro/decom/decomplie/result/'+file[:-4]):
    #    os.system('mkdir /pro/decom/decomplie/result/'+file[:-4])
   
    for fun in  os.listdir('/pro/decom/SmartHelme/solidity/'+file[:-4]):
        print(fun)
    
        cfg_path="/pro/decom/SmartHelme/cfg/"+file[:-4] 
        #if fun.startswith('decom_'):
        method=fun[:-4]
        print(method)
        '''if not os.path.exists('/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+method+'.sol'):
            print(1)
            if not os.path.exists('/pro/decom/SmartHelme/op_err/'+file[:-4]):
                os.system('mkdir /pro/decom/SmartHelme/op_err/'+file[:-4])
            with open('/pro/decom/SmartHelme/op_err/'+file[:-4]+'/Type&Border&Name.txt','w') as f:
                f.writelines('no complilable function')
            #j+=1
            continue'''
        #i+=1
        #method = "mint"
        #Sv = "map_4"
    
        try:
                
            [COTPrompt, CandidatePrompt, ContextPrompt] = DecompilationOptimizationforTypeBorderName (path, file, method, cfg_path, "Type&Border&Name")

            session = [
            {
                "role": "system",
                "content":  "First,you should remember your changes shouldn't change the original meaning of the function,and the intermediate execution logic of the function should be written in detail according to the given code. Second,you should complete the following three optimizations .We have established a candiatate list for the variable type" + str(CandidatePrompt) + ". Please help to optimize the following decompiled code , which has the disadvantages of meaningless variable names, inaccurate function border and inaccurate variable types.Second,please annotate 'The name of the corresponding state variable before the modification:' in the code to the right of the state variable which is used in new function as a comment. For example, if the new state variable is blan and the old state variable is cccc which are counterparts., then I would add '//The name of the corresponding state variable before the modification:ccc' to the right of the state variable blan: \n",
            }
            ]
            TypeBorderNamePrompt =  ContextPrompt+'\n'
            
            msg=get_completion(TypeBorderNamePrompt,session)
            msg=get_completion('Note:\n'+COTPrompt,session)
            print(msg)
            if not os.path.exists('/pro/decom/SmartHelme/result/'+file[:-4]):
                os.makedirs('/pro/decom/SmartHelme/result/'+file[:-4])
            with open('/pro/decom/SmartHelme/result/'+file[:-4]+'/Type&Border&Name.txt','w') as f:
                f.writelines(msg)
            #print( "TypeBorderNamePrompt", TypeBorderNamePrompt )
            #a="First,you should remember your changes shouldn't change the original meaning of the function,and the intermediate execution logic of the function should be written in detail according to the given code. Second,you should complete the following three optimizations .We have established a candiatate list for the variable type" + str(CandidatePrompt) + ". Please help to optimize the following decompiled code , which has the disadvantages of meaningless variable names, inaccurate function border and inaccurate variable types.Second,please annotate 'The name of the corresponding state variable before the modification:' in the code to the right of the state variable which is used in new function as a comment. For example, if the new state variable is blan and the old state variable is cccc which are counterparts., then I would add '//The name of the corresponding state variable before the modification:ccc' to the right of the state variable blan: \n"
            #a+=ContextPrompt+'\n'
            #a+='Note:\n'+COTPrompt
            #if not os.path.exists('/pro/decom/SmartHelme/promot/'+file[:-4]):
            #    os.system('mkdir /pro/decom/SmartHelme/promot/'+file[:-4])
            #with open('/pro/decom/SmartHelme/promot/'+file[:-4]+'/Type&Border&Name.txt','w') as f:
            #    f.writelines(a)
        except Exception as e:
            print(str(e))
            if not os.path.exists('/pro/decom/SmartHelme/op_err/'+file[:-4]):
                os.system('mkdir /pro/decom/SmartHelme/op_err/'+file[:-4])
            with open('/pro/decom/SmartHelme/op_err/'+file[:-4]+'/Type&Border&Name.txt','w') as f:
                f.writelines(str(e))
        all_sv=allSv('/pro/decom/SmartHelme/solidity/'+file[:-4]+'/'+method+'.sol')
        print(all_sv)
        all_t1=[]
        for Sv in all_sv:
            if os.path.exists('/pro/decom/SmartHelme/random/random_promot/'+file[:-4]+'/'+Sv+'.txt'):
                print('pass')
                continue
            t1 = threading.Thread(target=parll,args=(path,file ,Sv,cfg_path,method)) 
            t1.start() 
            all_t1.append(t1)
        for t1 in all_t1:
            t1.join()
                    #print ( "AttributePrompt", AttributePrompt )
        
#print(i)
#print(j)
            #python3 DecompilationOptimization.py

