import os
import re
import time
import pandas as pd
import csv

def ReadFile (Path, file):
    
    os.chdir(Path)   #修改当前工作目录
    a=1
    #token=b=pd.read_table("crosschainmanager.sol",header=None)
    #print(len(token))
    b=pd.read_table(file,delimiter='\n',header=None)
    b.columns = ["DecompiledCode"]
    b['method']='0'
    b['usagefromannotation']='0'
    b['usagefromerror']='0'
    return b



def AndOperation (m, alist):
    AndStr="describtion:"
    for k in range(m,len(alist)): 
        AndStr=AndStr +' '+ alist[k]
    return [AndStr]
            

def PreProcessing (b):
    MethodList=[]
    StateVariable=[]
    StateRecord=0
    for i in range(0,len(b)):
        fun_split=re.split(r'(?:[ ()])',b.iloc[i,0])
        #Record state variable
        if (StateRecord<1):
            Stateexpression_split = re.split(r'(?:[// ])',b.iloc[i,0])
            if("" in Stateexpression_split):
                count=Stateexpression_split.count("")
                for k in range(0, count):
                    Stateexpression_split.remove("")
            #print("Stateexpression", Stateexpression_split)
            for k in range(0, len(Stateexpression_split)):
                Storage_index = Stateexpression_split[k].find("STORAGE")
                StateVariableElement=[]
                if(Storage_index>-1 and len(Stateexpression_split)>1):
                    #print("Stateexpression", Stateexpression_split)
                    StateVariableElement.append(Stateexpression_split[k])
                    StateVariableElement.append(Stateexpression_split[k-1])
                    #print("Storage", Stateexpression_split[k])
                    #print("Storagename", Stateexpression_split[k-1])
                    StateType=""
                    for m in range(0, k-1):
                        StateType = StateType + Stateexpression_split[m]
                        #print("StateType", StateType)
                    StateVariableElement.append(StateType)
            StateVariable.append(StateVariableElement)        
            if (b.iloc[i,0].find('function')==0):
                StateRecord = StateRecord + 1
        
        #Record method 
        if (b.iloc[i,0].find('function')==0):
            b.iloc[i,1]=fun_split[1]
            if (fun_split[1] != ""):
                MethodList.append(fun_split[1])
        else:
            if (i>1):
                b.iloc[i,1]=b.iloc[i-1,1]

        #Record usage from annotation

        for k in range(0,len(fun_split)):
            index1=fun_split[k].find('//')
            if (index1>-1):
                if(k>0 and i<(len(b)-1)):
                    [b.iloc[i,2]]=AndOperation(k,fun_split)
                else:
                    [b.iloc[i+1,2]]=AndOperation(k,fun_split)
                  

        #Record usage from error 
        for j in range (0, len(fun_split)):
            index=fun_split[j].find('Error')
            if (index>-1):
                [b.iloc[i,3]]=AndOperation(j,fun_split)
                #print(b.iloc[i,:])
    MethodList=list(set(MethodList))
    if( [] in StateVariable):
        count=StateVariable.count([])
    for k in range(0, count):
        StateVariable.remove([])
    for m in range(0, len(StateVariable)):
        #print(StateVariable[m][1])
        State_re = re.split(r'(?:[;])', StateVariable[m][1])
        
        StateVariable[m][1] = State_re[0]
    CallGraph = []
    
    for m in range(0, len(b)):
        
        for n in range (0, len(MethodList)):
            
            if (b.iloc[m,0].find(MethodList[n]+"(")>-1) and (b.iloc[m,0].find("function")<0 and b.iloc[m,0].find("(")>-1) and (b.iloc[m,0].find(")")>-1) and b.iloc[m,1]!="0":
                CallGraph.append( [b.iloc[m,1], MethodList[n]] )
                
                #print ("Call", b.iloc[m,0], b.iloc[m,1])
    #CallGraph = list ( set (CallGraph) )
    n=0  
    m1=1
    m2=1          
    while (m1<len(CallGraph)):
        m1=m1+1
        if (CallGraph.count(CallGraph[m2])>1):
            CallGraph.remove (CallGraph[m2])
        else:
            m2 = m2+1
            
    for k in range (0, len(CallGraph)):        
        CallGraph[k].append (1)
        
        if((k>1) and (CallGraph[k][0]==CallGraph[k-1][0]) ):
            #print ("condition",CallGraph[k], CallGraph[k-1])
            if (CallGraph[k][1]!=CallGraph[k-1][1]):
                
                CallGraph[k][2] = CallGraph[k-1][2] +1

    
    return [b, MethodList, StateVariable, CallGraph]

def statedependencymethod (b, StateVariable, Sv, MethodList):
    MethodforSv = []
    MethodRandW = []
    methodpair = []
    MEthodAandT = []
    for m in range (0, len(b)):
        #R&W
        if (b.iloc[m,0].find (Sv)>-1 and (b.iloc[m,1] in MethodList)):
            MethodRandW.append (b.iloc[m,1])
        
        for n in range (0, len(StateVariable)):
            if ( (b.iloc[m,0].find (StateVariable[n][1])>-1) and ((b.iloc[m,0].find ("require")>-1) or (b.iloc[m,0].find ("assert")>-1)) ):
                for k in range (0, len(b)):
                    if ( (b.iloc[k,0].find (StateVariable[n][1])>-1) and (b.iloc[k,1] != b.iloc[m,1]) and (b.iloc[k,1] in MethodList) and (b.iloc[m,1] in MethodList) ):
                        methodpair.append ( [b.iloc[m,1], b.iloc[k,1]] )
    for element in methodpair:
        if (element[0] in MethodRandW):
            MEthodAandT.append (element[1])
        if (element[1] in MethodRandW):
            MEthodAandT.append (element[0])
    MethodforSv = list(set(MethodRandW + MEthodAandT))         
    return [MethodforSv]

#def MethodGeneration (b)
            
#path = "/pro/decom/decomplie/decomplied_code"                           # 设置路径
#file = "0x0e0e67bd3b1f33ef633e52d7961a50d9857ce4e9.sol"      
#b = ReadFile (path, file)
#[b, MethodList,StateVariable, CallGraph]=PreProcessing (b)
#print ("StateVariable", StateVariable)
#Sv= "_balanceOf"
#statedependencymethod (b, StateVariable, Sv, MethodList)


#python3 Preprocess.py