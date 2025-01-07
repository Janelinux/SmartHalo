from slither import *
import os
import re
import pandas as pd
from CFGconstruction import *
from Preprocess import *

def StateDependencyExtraction (control_node_table, StateVariable):
    SDRWedge=[]
    #Identify read&write state dependency
    for m in range(1, len(control_node_table)):
        if(not(isinstance(control_node_table.loc[m,"LeftVariable"],str))):
            control_node_table.loc[m,"LeftVariable"] = str (control_node_table.loc[m,"LeftVariable"])
                        
        if(not(isinstance(control_node_table.loc[m,"RightVariable1"],str))):
            control_node_table.loc[m,"RightVariable1"] = str (control_node_table.loc[m,"RightVariable1"])

        if(not(isinstance(control_node_table.loc[m,"RightVariable2"],str))):
            control_node_table.loc[m,"RightVariable2"] = str (control_node_table.loc[m,"RightVariable2"])  
            
        for n in range(0, len(StateVariable)):
                         
            #write dependency
           
            if (control_node_table.loc[m,"LeftVariable"].find(StateVariable[n][1])>-1):
                SDRWedge.append([control_node_table.loc[m,"Method"], control_node_table.loc[m,"Node"] ,StateVariable[n][1], "S2E", control_node_table.loc[m,"Expression"]])
            #read dependency
            if ( (control_node_table.loc[m,"RightVariable1"].find(StateVariable[n][1])>-1) or (control_node_table.loc[m,"RightVariable2"].find(StateVariable[n][1])>-1) ):
                SDRWedge.append([control_node_table.loc[m,"Method"], StateVariable[n][1], control_node_table.loc[m,"Node"], "E2S", control_node_table.loc[m,"Expression"]] )
                         
    #print("Read&Write state dependency", SDRWedge)
    
    #ASD
    MethodPair = []
    for n in range (0, len(SDRWedge)):
        #print("Svexpression", SDRWedge[n][3])
        #read in assert statement
        if ( (SDRWedge[n][3] == "E2S") and ( (SDRWedge[n][4].find("require")>-1) or (SDRWedge[n][4].find("assert")>-1) ) ):

            #write in method
            for p in range (0, len(SDRWedge)):
                if ( (SDRWedge[p][3] == "S2E") and SDRWedge[n][1] == SDRWedge[p][2] ):
                    
                    #Read method should be inconsistent with write method
                    if(SDRWedge[n][0] != SDRWedge[p][0]):
                        if ( [SDRWedge[p][0], SDRWedge[n][0]] not in MethodPair):
                            MethodPair.append ( [SDRWedge[p][0], SDRWedge[n][0]] )
    #MethodPair = list( set( MethodPair ) )
    #print("MethodPair", MethodPair)
    
    [ASD, SourceSv, TargetSv] = Method2StateVariable (MethodPair,SDRWedge)
    
    #print ("ASD", ASD)
    return [SDRWedge, ASD, MethodPair]
    #TSD
    
    
    
    

def Method2StateVariable (MethodPair, SDRWedge):
    SourceSv=[]
    TargetSv=[]
    
    for m in range (0, len(SDRWedge)):
        for n in range (0, len (MethodPair)):
            #Source state variable
            
            if ( SDRWedge[m][0] == MethodPair[n][0] ):
                #print("SDRWedge", SDRWedge[m][3])
                if(SDRWedge[m][3]=="S2E"):
                    if ( [SDRWedge[m][2],MethodPair[n][0]] not in SourceSv):
                        SourceSv.append([SDRWedge[m][2],MethodPair[n][0]])
                if(SDRWedge[m][3]=="E2S"):
                    if ( [SDRWedge[m][1],MethodPair[n][0]] not in SourceSv):
                        SourceSv.append([SDRWedge[m][1],MethodPair[n][0]])    

            #Target state variable
            if ( SDRWedge[m][0] == MethodPair[n][1] ):
                if(SDRWedge[m][3]=="S2E"):
                    if ( [SDRWedge[m][2],MethodPair[n][1]] not in TargetSv):
                        TargetSv.append([SDRWedge[m][2],MethodPair[n][1]])
                if(SDRWedge[m][3]=="E2S"):
                    if ( [SDRWedge[m][1],MethodPair[n][1]] not in TargetSv):
                        TargetSv.append([SDRWedge[m][1],MethodPair[n][1]])   
             
    #State variable dependency
    ASD = []
    for i in range(0 ,len(SourceSv)):
        for j in range (0, len(TargetSv)):
            if ( SourceSv[i][0] != TargetSv[j][0] ):
                ASD.append ( [SourceSv[i][0],TargetSv[j][0], "S2S", SourceSv[i][1], TargetSv[j][1]] )
    
    return [ASD, SourceSv, TargetSv]
                           
    
def control_node_table_process (control_node_table):
    for m in range(1, len(control_node_table)):
        if(not(isinstance(control_node_table.loc[m,"LeftVariable"],str))):
            control_node_table.loc[m,"LeftVariable"] = str (control_node_table.loc[m,"LeftVariable"])
                        
        if(not(isinstance(control_node_table.loc[m,"RightVariable1"],str))):
            control_node_table.loc[m,"RightVariable1"] = str (control_node_table.loc[m,"RightVariable1"])

        if(not(isinstance(control_node_table.loc[m,"RightVariable2"],str))):
            control_node_table.loc[m,"RightVariable2"] = str (control_node_table.loc[m,"RightVariable2"]) 
            
        LeftVariable_split = re.split(r'(?:[()=])', control_node_table.loc[m, "LeftVariable"]) 
        control_node_table.loc[m, "LeftVariable"] = LeftVariable_split[0]
        
        RightVariable1_split = re.split(r'(?:[()=])', control_node_table.loc[m, "RightVariable1"]) 
        control_node_table.loc[m, "RightVariable1"] = RightVariable1_split[0]
        
        RightVariable2_split = re.split(r'(?:[()=])', control_node_table.loc[m, "RightVariable2"]) 
        control_node_table.loc[m, "RightVariable2"] = RightVariable2_split[0]
    return [control_node_table]
        
    
    
def TypeDependencyExtraction (control_node_table, MethodList, CallGraph):
    TypeDependency = []
    CallSourceMethod = []
    for k in range (0, len(CallGraph)):        
        CallSourceMethod.append(CallGraph[k][0])
    CallSourceMethod = list (set (CallSourceMethod))
    #print("CallSourceMethod", CallSourceMethod)
    
    for element in CallSourceMethod:
        TargetSeriesCG = []
        TargetSeriesCT = []
        for i in range (0, len(CallGraph)):
            if ( CallGraph[i][0] == element ):
                TargetSeriesCG.append( CallGraph[i][1] )
        for m in range (1, len (control_node_table)):
            if ( control_node_table.loc[m, "Method"] == element ):
                #print("Notice",control_node_table.loc[m, "Operation"]) 
                MethodCallOperation = ["HIGH_LEVEL_CALL,", "INTERNAL_CALL,", "LOW_LEVEL_CALL,", "SOLIDITY_CALL"]
                if ( control_node_table.loc[m, "Operation"] in MethodCallOperation ): 
                    #print("Notice2",control_node_table.loc[m, "Operation"])
                    if ((control_node_table.loc[m, "LeftVariable"].find("TMP")>-1) or (control_node_table.loc[m, "LeftVariable"].find("REF")>-1)):
                        TDSourceCall = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "LeftVariable"]
                    else:
                        TDSourceCall = control_node_table.loc[m, "LeftVariable"]
                    TargetSeriesCT.append( TDSourceCall )            
        #print("For", element, TargetSeriesCG, "To",  TargetSeriesCT)
        
    for m in range (1, len (control_node_table)):
        # Type transmission
        
        OnlyR1 = [":=", "UnaryType", "PUSH"]
        if ( control_node_table.loc[m, "Operation"] in OnlyR1 ):
            if ( (control_node_table.loc[m, "LeftVariable"].find("TMP")>-1) or (control_node_table.loc[m, "LeftVariable"].find("REF")>-1) ):
                TDSource = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "LeftVariable"]
            else:
                TDSource = control_node_table.loc[m, "LeftVariable"]
        
            if ( (control_node_table.loc[m, "RightVariable1"].find("TMP")>-1) or (control_node_table.loc[m, "RightVariable1"].find("REF")>-1) ):
                TDTarget = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "RightVariable1"]
            else:
                TDTarget = control_node_table.loc[m, "RightVariable1"]
            existence=["nan", " False"," True", "error"]
            if ( (TDTarget not in existence) and (TDSource not in existence) ):
                TypeDependency.append ([ TDSource, TDTarget, "V2V", control_node_table.loc[m, "Method"]])
        
        OperationwithR1R2 = ["**","*","/","%","+","-","<<",">>","&","^","|"]
        if ( control_node_table.loc[m, "Operation"] in OperationwithR1R2 ):   
            if ((control_node_table.loc[m, "LeftVariable"].find("TMP")>-1) or (control_node_table.loc[m, "LeftVariable"].find("REF")>-1)):
                TDSource12 = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "LeftVariable"]
            else:
                TDSource12 = control_node_table.loc[m, "LeftVariable"]
        
            if ((control_node_table.loc[m, "RightVariable1"].find("TMP")>-1) or (control_node_table.loc[m, "RightVariable1"].find("REF")>-1) ):
                TDTarget1 = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "RightVariable1"]
            else:
                TDTarget1 = control_node_table.loc[m, "RightVariable1"]     
            if ((control_node_table.loc[m, "RightVariable2"].find("TMP")>-1) or (control_node_table.loc[m, "RightVariable2"].find("REF")>-1) ):
                TDTarget2 = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "RightVariable2"]
            else:
                TDTarget2 = control_node_table.loc[m, "RightVariable2"]  
                
            existence=["nan", " False"," True", "error"]
            if ( (TDTarget1 not in existence) and (TDSource12 not in existence) ):
                TypeDependency.append ([ TDSource12, TDTarget1, "V2V", control_node_table.loc[m, "Method"]])  
                
            if ( (TDTarget2 not in existence) and (TDSource12 not in existence) ):
                TypeDependency.append ([ TDSource12, TDTarget2, "V2V", control_node_table.loc[m, "Method"]])  
                
        CompareOperation = ["<",">","<=",">=","==","!=","&&","--"]
        if ( control_node_table.loc[m, "Operation"] in CompareOperation ):   
            if ((control_node_table.loc[m, "LeftVariable"].find("TMP")>-1) or (control_node_table.loc[m, "LeftVariable"].find("REF")>-1)):
                TDSourceC = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "LeftVariable"]
            else:
                TDSourceC = control_node_table.loc[m, "LeftVariable"]
            #if ((control_node_table.loc[m, "RightVariable1"].find("TMP")>-1) or (control_node_table.loc[m, "RightVariable1"].find("REF")>-1) ):
            #    TDTargetC1 = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "RightVariable1"]
            #else:
            #    TDTargetC1 = control_node_table.loc[m, "RightVariable1"]     
            #if ((control_node_table.loc[m, "RightVariable2"].find("TMP")>-1) or (control_node_table.loc[m, "RightVariable2"].find("REF")>-1) ):
            #    TDTargetC2 = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "RightVariable2"]
            #else:
            #    TDTargetC2 = control_node_table.loc[m, "RightVariable2"]    
            existence=["nan", " False"," True", "error"]
            if ( (TDSourceC not in existence) ):
                TypeDependency.append ([ TDSourceC, "bool", "T2V", control_node_table.loc[m, "Method"]])  
                

        
        

        #    existence=["nan", " False"," True", "error"]    
        #    if ( (TDSourceCall not in existence) ): 
        #        if (control_node_table.loc[m, "LeftVariable"].find("TMP")>-1)
        #        TypeDependency.append ([ TDSourceCall, "bool" ])  
                #print ("IR", [ TDSourceCall, "bool" ])
                
        ConvertOperation = ["CONVERT"]
        if ( control_node_table.loc[m, "Operation"] in ConvertOperation ):   
            if ((control_node_table.loc[m, "LeftVariable"].find("TMP")>-1) or (control_node_table.loc[m, "LeftVariable"].find("REF")>-1)):
                TDSourceCon = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "LeftVariable"]
            else:
                TDSourceCon = control_node_table.loc[m, "LeftVariable"]
            existence=["nan", " False"," True", "error"]
            
            if ( (TDSourceCon not in existence) ): 
                TypeDependency.append ([ TDSourceCon, control_node_table.loc[m, "RightVariable2"], "T2V", control_node_table.loc[m, "Method"]])  
                #print ("IR", [ TDSourceCon, control_node_table.loc[m, "RightVariable2"] ]) 
                
        ReturnOperation = [ "RETURN" ]               
        if ( control_node_table.loc[m, "Operation"] in ReturnOperation ):  
            if ((control_node_table.loc[m, "RightVariable1"].find("TMP")>-1) or (control_node_table.loc[m, "RightVariable1"].find("REF")>-1)):
                TDTargetRe = control_node_table.loc[m, "Method"] + control_node_table.loc[m, "RightVariable1"]
            else:
                TDTargetRe = control_node_table.loc[m, "RightVariable1"]
            for n in range (0, len(CallGraph)): 
                if (CallGraph[n][1] == control_node_table.loc[m, "Method"]):
                    #print ("Re", CallGraph[n][0], TDTargetRe, CallGraph[n][1])
                    TypeDependency.append( [ "Method "+CallGraph[n][0], TDTargetRe, "E2Vreturn", "Method "+CallGraph[n][1], CallGraph[n][0], CallGraph[n][1]] )
                    
        # Inline functions 
        if ( control_node_table.loc[m, "Expression"].find("blockhash")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "blockhash", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "blockhash", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("block.coinbase")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "address", "T2E", "block.coinbase", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "address", "T2E", "block.coinbase", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("block.difficulty")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E", "block.difficulty", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "block.difficulty", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("block.gaslimit")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E", "block.gaslimit", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E" "block.gaslimit", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("block.number")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E", "block.number", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E" "block.number", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("gasleft()")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint256", "T2E", "gasleft()", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint256", "T2E", "gasleft()", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("block.timestamp")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E", "block.timestamp", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "block.timestamp", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("msg.data")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes", "T2E", "msg.data", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes", "T2E", "msg.data", control_node_table.loc[m, "Method"]])
                
        if ( control_node_table.loc[m, "Expression"].find("msg.gas")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E", "msg.gas", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "msg.gas", control_node_table.loc[m, "Method"]])  
                        
        if ( control_node_table.loc[m, "Expression"].find("msg.sender")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "address", "T2E", "msg.sender", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "address", "T2E", "msg.sender", control_node_table.loc[m, "Method"]])      
                
        if ( control_node_table.loc[m, "Expression"].find("msg.sig")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes4", "T2E", "msg.sig", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes4", "T2E", "msg.sig", control_node_table.loc[m, "Method"]])    
                
        if ( control_node_table.loc[m, "Expression"].find("msg.value")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E","msg.value", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "msg.value", control_node_table.loc[m, "Method"]]) 
                   
        if ( control_node_table.loc[m, "Expression"].find("tx.gasprice")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E","tx.gasprice", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "tx.gasprice", control_node_table.loc[m, "Method"]])    
                
        if ( control_node_table.loc[m, "Expression"].find("tx.origin")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "address", "T2E","tx.origin", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "address", "T2E", "tx.origin", control_node_table.loc[m, "Method"]])  
                
        if ( control_node_table.loc[m, "Expression"].find("abi.encode")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes", "T2E","abi.encode", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes", "T2E", "abi.encode", control_node_table.loc[m, "Method"]])  
                
        if ( control_node_table.loc[m, "Expression"].find("addmod")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E","addmod", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "addmod", control_node_table.loc[m, "Method"]])  
                
        if ( control_node_table.loc[m, "Expression"].find("mulmod")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "uint", "T2E","mulmod", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "uint", "T2E", "mulmod", control_node_table.loc[m, "Method"]])  
                
        if ( control_node_table.loc[m, "Expression"].find("keccak256")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes32", "T2E","keccak256", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "keccak256", control_node_table.loc[m, "Method"]])      
                
        if ( control_node_table.loc[m, "Expression"].find("sha256")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "sha256", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "sha256", control_node_table.loc[m, "Method"]])      
                
        if ( control_node_table.loc[m, "Expression"].find("sha3")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "sha3", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes32", "T2E", "sha3", control_node_table.loc[m, "Method"]])     
                
        if ( control_node_table.loc[m, "Expression"].find("ripemd160")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "bytes20", "T2E", "ripemd160", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "bytes20", "T2E", "ripemd160", control_node_table.loc[m, "Method"]])  
                
        if ( control_node_table.loc[m, "Expression"].find("errecover")>-1 ):
            if ( [control_node_table.loc[m, "Expression"], "address", "T2E", "errecover", control_node_table.loc[m, "Method"]] not in TypeDependency ):
                TypeDependency.append( [control_node_table.loc[m, "Expression"], "address", "T2E", "errecover", control_node_table.loc[m, "Method"]])  
                

                   
    
    #print ("TypeDependency", TypeDependency)  
        # Type generation
    return [TypeDependency]
        
    
    
    
#def TDGconstruction ():
    
    
#path = "/pro/decom/decomplie"                           # 设置路径
#file = "crosschainmanager.sol"      
#b = ReadFile (path, file)
#[b, MethodList,StateVariable, CallGraph]=PreProcessing (b)
#print("MethodList",MethodList)
#print("StateVariable",StateVariable)
#cfg_path="/pro/decom/decomplie/cfg/crosschainmanager"
#[control_node_table, control_edge_table] = CFG_construction (cfg_path)
#print ("control_node_table", control_node_table)
#print ("control_edge_table", control_edge_table)
#[SDRWedge, ASD, MethodPair] = StateDependencyExtraction (control_node_table, StateVariable)
#[control_node_table] = control_node_table_process (control_node_table)
#[TypeDependency] = TypeDependencyExtraction (control_node_table, MethodList, CallGraph)

#for m in range(1, len(control_node_table)):
#    print("Variable", control_node_table.loc[m, "LeftVariable"], control_node_table.loc[m, "RightVariable1"], control_node_table.loc[m, "RightVariable2"])

#python3 CDGconstruction.py