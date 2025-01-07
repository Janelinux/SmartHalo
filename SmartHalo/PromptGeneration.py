from CDGconstruction import * 
from CFGconstruction import *
import os
import re
import pandas as pd
import networkx as nx
from Preprocess import *

def ContextPromptGenerationforTypeBorderName (CallGraph, method, b, MethodList):

    CallG = nx.DiGraph()
    ContextPrompt = ""
    DocumHead = ""
    for m in range (0, len(CallGraph)):
        CallG.add_edge (CallGraph[m][0], CallGraph[m][1])
    for k in range (0, len(b)):
        if (b.loc[k, "method"] == "0"):
            DocumHead = DocumHead + b.loc[k, "DecompiledCode"] + "\n"    
    paths = []    
    for element in MethodList:
        subpaths = nx.all_simple_paths ( CallG, source = "__function_selector__", target = element )
        for subpath in subpaths:
            if (method in subpath):
                paths.append (subpath)
        
    
    ContextMethod = []
    for path in paths:         
        for element in path:
            if ( (element not in ContextMethod) and (element != "__function_selector__") ):
                ContextMethod.append (element)
    ContextMethod = list (set (ContextMethod))    
    for element in ContextMethod:                    
        for k in range (0, len(b)):
            if (b.loc[k, "method"] ==element ):
                ContextPrompt = ContextPrompt + b.loc[k, "DecompiledCode"] + "\n"   

    ContextPrompt = DocumHead + ContextPrompt 
    return [ContextMethod, ContextPrompt]


def ContextPromptGenerationforAttribute (CallGraph, b, SDRWedge, Sv, MethodPair):

    CallG = nx.DiGraph()
    ContextPrompt = ""
    DocumHead = ""
    for m in range (0, len(CallGraph)):
        CallG.add_edge (CallGraph[m][0], CallGraph[m][1])
    for k in range (0, len(b)):
        if (b.loc[k, "method"] == "0"):
            DocumHead = DocumHead + b.loc[k, "DecompiledCode"] + "\n"    
    StateMethod = []    

    for n in range (0, len(SDRWedge)):
        if (SDRWedge[n][3] == "E2S"):
            if (SDRWedge[n][1] == Sv ):
                if (SDRWedge[n][0] not in StateMethod):
                    StateMethod.append (SDRWedge[n][0])
                
        else:
            if (SDRWedge[n][3] == "S2E"):
                if (SDRWedge[n][2] == Sv ):
                    if (SDRWedge[n][0] not in StateMethod):
                        StateMethod.append (SDRWedge[n][0])
    for k in range (0, len(MethodPair)):
        StateMethod.append (MethodPair[k][0]) 
        StateMethod.append (MethodPair[k][1]) 
                            
    StateMethod = list ( set (StateMethod) )  
    
    
    for element in StateMethod:                    
        for k in range (0, len(b)):
            if (b.loc[k, "method"] ==element ):
                ContextPrompt = ContextPrompt + b.loc[k, "DecompiledCode"] + "\n"         
    #print("StateMethod", StateMethod)     
    
           
     

    ContextPrompt = DocumHead + ContextPrompt 
    return [StateMethod, ContextPrompt]
            
            
def ContextPromptGenerationforVariableNameandFunctionBorder (method, b):
    ContextMethod = [method]
    DocumHead = ""
    ContextPrompt = ""  
    for k in range (0, len(b)):
        if (b.loc[k, "method"] == "0"):
            DocumHead = DocumHead + b.loc[k, "DecompiledCode"] + "\n"   
            
    for element in ContextMethod:                    
        for k in range (0, len(b)):
            if (b.loc[k, "method"] ==element ):
                ContextPrompt = ContextPrompt + b.loc[k, "DecompiledCode"] + "\n"   

    ContextPrompt = DocumHead + ContextPrompt 
    return [ContextMethod, ContextPrompt]
    
    
def CandidatePromptGeneration (OptimizationType):
     ContributeCandidate = ["asset", "router", "fees", "flag", "address", "limit"] 
     TypeCandidate = [ ]
     #bool type
     TypeCandidate.append ("bool") 
     #bytes type
     for k in range(1,33):
         TypeCandidate.append("bytes" + str (k))      
     #address type
     TypeCandidate.append ("address") 

     #float
     TypeCandidate.append ("fixed") 
     TypeCandidate.append ("unfixed") 
    
     #string
     TypeCandidate.append ("string") 
    
     #引用类型
     TypeCandidate.append ("memory") 
     TypeCandidate.append ("storage") 
     TypeCandidate.append ("calldata") 
    
     TypeCandidate.append ("struct") 
     #int type
     for k in range(1,33):
         TypeCandidate.append("int" + str (k*8)) 
     #uint type
     for k in range(1,33):
         TypeCandidate.append("uint" + str (k*8)) 
         

    
     if (OptimizationType == "Attribute"):
         return [ContributeCandidate]
     else:
        if (OptimizationType == "Type&Border&Name"):
            return [TypeCandidate]
        
def TDGGeneration (TypeDependency):
    TDG = nx.DiGraph()
    for m in range (0, len(TypeDependency)):
        if (TypeDependency[m][2] == "V2V" ):
            TDG.add_edge (TypeDependency[m][0], TypeDependency[m][1])
        if (TypeDependency[m][2] == "T2E" ):
            TDG.add_edge (TypeDependency[m][1], TypeDependency[m][0])  
        if (TypeDependency[m][2] == "T2V" ):
            TDG.add_edge (TypeDependency[m][1], TypeDependency[m][0])              
        if (TypeDependency[m][2] == "E2Vreturn" ):
            TDG.add_edge (TypeDependency[m][0], TypeDependency[m][1])    
        if (TypeDependency[m][2] == "V2E" ):
            TDG.add_edge (TypeDenendency[m][0], TypeDependency[m][1]) 
    TDG_nodes = []
    for node in TDG.nodes:
        TDG_nodes.append (node)
    modifyTDG = []       
    for m in range (0, len(TDG_nodes)):
        for n in range (0, len(TDG_nodes)):
            if (m <= n):
                Paths = nx.all_simple_paths ( TDG, source = TDG_nodes[m], target = TDG_nodes[n] ) 
                modifypaths = []
                for path in Paths:
                    modifypath =[]
                    for k in range(0, len(path)):
                        if( (path[k].find("TMP")<0) and (path[k].find("REF")<0) ):
                            if(len(path) > 1):
                                modifypath.append(path[k])
                    if(len(modifypath) > 1):
                        modifypaths.append(modifypath)
                if(len(modifypaths) > 0):
                    modifyTDG.append (modifypaths)
    ModifyTypeDependency = []                
    for k in range (0, len(modifyTDG)):
        for m in range (0, len(modifyTDG[k])):
            for n in range (0, (len(modifyTDG[k][m])-1)):
                for m1 in range (0, len(TypeDependency)):
                    if (TypeDependency[m1][2] == "V2V" ):
                        if ((TypeDependency[m1][0]==modifyTDG[k][m][n]) and (TypeDependency[m1][1] == modifyTDG[k][m][n+1])):
                            if(TypeDependency[m1] not in ModifyTypeDependency):
                                ModifyTypeDependency.append(TypeDependency[m1])
                    if (TypeDependency[m1][2] == "T2E" ):
                        if ((TypeDependency[m1][1]==modifyTDG[k][m][n]) and (TypeDependency[m1][0] == modifyTDG[k][m][n+1])):
                            if(TypeDependency[m1] not in ModifyTypeDependency):
                                ModifyTypeDependency.append(TypeDependency[m1])
                    if (TypeDependency[m1][2] == "T2V" ):
                        if((TypeDependency[m1][1]==modifyTDG[k][m][n]) and (TypeDependency[m1][0]== modifyTDG[k][m][n+1])) :
                            if(TypeDependency[m1] not in ModifyTypeDependency):
                                ModifyTypeDependency.append(TypeDependency[m1])                     
                    if (TypeDependency[m1][2] == "E2Vreturn" ):
                        if ((TypeDependency[m][0] == modifyTDG[k][m][n]) and (TypeDependency[m1][1] == modifyTDG[k][m][n+1])) :
                            if(TypeDependency[m1] not in ModifyTypeDependency):
                                ModifyTypeDependency.append(TypeDependency[m1])           
                    if (TypeDependency[m1][2] == "V2E" ):
                        if ((TypeDenendency[m1][0] ==modifyTDG[k][m][n]) and (TypeDependency[m1][1] == modifyTDG[k][m][n+1])) :
                            if(TypeDependency[m1] not in ModifyTypeDependency):
                                ModifyTypeDependency.append(TypeDependency[m1])    
                

    #print("nodes", modifyTDG) 
    return[ModifyTypeDependency]   
            
                  
def COTPromptGenerationforTypeBorderName (ModifyTypeDependency, OptimizationType):
    COTPrompt = ""
    if (OptimizationType == "Type&Border&Name"):
        for k in range (0, len(ModifyTypeDependency)):
            # from Variable to Variable
            if (ModifyTypeDependency[k][2] == "V2V"):
                if( ModifyTypeDependency[k][1].isnumeric()):
                    COTPrompt = COTPrompt + "The variable [" + ModifyTypeDependency[k][0] + "] depend on the constants [" + ModifyTypeDependency[k][1] + "], the type of variable [" + ModifyTypeDependency[k][0] + "] should be consistent with the type of constants [" + ModifyTypeDependency[k][1] + "]. \n"
                else:
                    COTPrompt = COTPrompt + "The variable [" + ModifyTypeDependency[k][0] + "] depend on the variable [" + ModifyTypeDependency[k][1] + "], the type of variable [" + ModifyTypeDependency[k][0] + "] should be consistent with the type of variable [" + ModifyTypeDependency[k][1] + "]. \n"
            
            # from Type to Expression
            if (ModifyTypeDependency[k][2] == "T2E"):
                COTPrompt = COTPrompt + "In the expression [" + ModifyTypeDependency[k][0] + "], the value of  predefined function / operands [" + ModifyTypeDependency[k][3] + "]  is type of [" + ModifyTypeDependency[k][1] + "]. \n"
            # from Type to Variable
            if (ModifyTypeDependency[k][2] == "T2V"):
                COTPrompt = COTPrompt + "The type of variable [" + ModifyTypeDependency[k][0] +"] is [" + ModifyTypeDependency[k][1] + "]. "  
            #from Expression to Variable
            if (ModifyTypeDependency[k][2] == "E2Vreturn"):
                COTPrompt = COTPrompt + "[" + ModifyTypeDependency[k][0] + "] invokes [" +  ModifyTypeDependency[k][3] + "], the return value of [" + ModifyTypeDependency[k][3] + "] depends on the variable [" + ModifyTypeDependency[k][1] + "], so the type of return value of [" + ModifyTypeDependency[k][3] + "] is consistent with the type of variable [" + ModifyTypeDependency[k][1] + "]. \n"               
    return [COTPrompt]

def COTPromptGenerationforAttribute (SDRWedge, ASD, OptimizationType):
    COTPrompt = ""
    if (OptimizationType == "Attribute"):
        for m in range (0, len(SDRWedge)):
            # from State Variable to Expression
            if (SDRWedge[m][3] == "S2E"):
                COTPrompt = COTPrompt + "In the function [" + SDRWedge[m][0] + "], the State Variable [" + SDRWedge[m][2] + "] is written by Expression [" + SDRWedge[m][4] + "] \n"
            # from State Expression to State Variable
            if (SDRWedge[m][3] == "E2S"):
                COTPrompt = COTPrompt + "In the function [" + SDRWedge[m][0] + "], the State Variable [" + SDRWedge[m][1] + "] is read by Expression [" + SDRWedge[m][4] + "] \n"
        for n in range (0, len(ASD)):
            if (ASD[n][2] == "S2S" ):
                COTPrompt = COTPrompt + "The attribute of State Variable [" + ASD[n][0] + "] is semantic-correlated to the attribute of State Variable [" + ASD[n][1] + "] \n"
    
    return [COTPrompt]



[TypeCandidate] = CandidatePromptGeneration ("Type&Border&Name")
print("TypeCandidate", TypeCandidate)
# python3 PromptGeneration.py