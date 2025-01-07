
from slither import *
import os
import re
import pandas as pd


#all_slither(file_path)

def CFG_construction (cfg_path):
    #data=[["0","0","0","0"]]
    control_node_table = pd.DataFrame()
    control_edge_table = pd.DataFrame()
    
    #rename cfg file
    k=0
    edge_num=0
    IR_value=0
    for file in os.listdir(cfg_path):
        k=k+1
        os.chdir(cfg_path) 
        file_split=re.split(r'(?:[.])', file)
        #control_flow_table.loc[k,"Method"] = file_spilit[0]
        with open (file, "r") as rfile:
            code=file_split[0]+" "
            while True:
                char = rfile.read(1)
                #charand1 = rfile.read(2)
                if (char != "\n"):
                    code=code+char
                else:
                    code=code+ "."

                if not char:
                    break
                
            #print("code:",code)

            code_split=re.split(r'(?:[{;}])', code)
            #print("code_split:",code_split)
                    
            
            for m in range(0, len(code_split)):
                if (code_split[m].find("Node")>-1):
                    # Node
                    
                    type_num=code_split[m].find("Type:")
                    expression_num=code_split[m].find("EXPRESSION:")
                    IR_num=code_split[m].find("IR")
                    
                    
                    #print("code",code_split[m])
                    #print("Type",code_split[m][(type_num+5):expression_num])
                    #print("Expression",code_split[m][(expression_num+11):IR_num])
                    #print("IR",code_split[m][(IR_num+4):])
                    if(IR_num>-1):
                        IR_split=re.split(r'(?:[."\]])', code_split[m][(IR_num+4):])
                        #print("IR_split", IR_split)
                        for element in IR_split:
                            if (element != ""):
                                #print("element",element)
                                IR_value=IR_value+1
                                control_node_table.loc[IR_value,"IR"]=element
                                if(expression_num>-1):
                                    control_node_table.loc[IR_value,"Expression"]=code_split[m][(expression_num+11):IR_num]
                                if(type_num>-1):
                                    control_node_table.loc[IR_value,"Type"]=code_split[m][(type_num+5):expression_num]        
                                control_node_table.loc[IR_value,"Method"]=file_split[0]
                                control_node_table.loc[IR_value,"Node"]=code_split[m][1]
                                [operation,leftvariable,rightvariable1,rightvariable2] = IR2quaternion (element)  
                                if(operation!=""):
                                    control_node_table.loc[IR_value,"Operation"]=operation
                                if(leftvariable!=""):
                                    control_node_table.loc[IR_value,"LeftVariable"]=leftvariable
                                if(rightvariable1!=""):
                                    control_node_table.loc[IR_value,"RightVariable1"]=rightvariable1
                                if(rightvariable2!=""):
                                    control_node_table.loc[IR_value,"RightVariable2"]=rightvariable2                                             
                else:
                    if(code_split[m] != '.' and code_split[m].find("digraph")<0 and code_split[m].find("->")>-1):
                         #Edge
                        #print("edge:",code_split[m])
                        edge_num=edge_num+1
                        edge_split=re.split(r'(?:[->\[\].])', code_split[m])
                        #print("edge_split",edge_split)
                        #print(edge_split[1],edge_split[1].isnumeric())
                        #print(edge_split[3],edge_split[3].isnumeric())
                           
                            
                        if(len(edge_split)>=4 and edge_split[1].isnumeric() and edge_split[3].isnumeric()):
                            control_edge_table.loc[edge_num,"Method"]= file_split[0]
                            control_edge_table.loc[edge_num,"Source"]=edge_split[1]
                            control_edge_table.loc[edge_num,"Target"]=edge_split[3]
                            if(len(edge_split)>=6):
                                control_edge_table.loc[edge_num,"attribute"]=edge_split[4]
                            
    return [control_node_table, control_edge_table]
        
        
def IR2quaternion (IR):
    operation=""
    leftvariable=""
    rightvariable1=""
    rightvariable2=""
    
    #Assignment
    #IR= "v2(bytes) := TMP_4(bytes)"
    #IR="TMP_1(bool) = REF_0 && 0"
    #IR="REF_0 -> LENGTH TMP_0"
    #IR="TMP_77 = CONVERT 0 to address"
    #IR="RETURN v5"
    #IR="CONDITION TMP_8"
    if (IR.find(":=")>-1):
        IRstatement_split=re.split(r'(?:[:=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)            
        operation=":="
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        
    #Binary Operation
    BinaryOperation=["**","*","/","%","+","-","<<",">>","&","^","|","<",">","<=",">=","==","!=","&&","--"]

    if (IR.find("**")>-1):
        IRstatement_split=re.split(r'(?:[**=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        operation="**"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
        
    if (IR.find("*")>-1):
        IRstatement_split=re.split(r'(?:[*=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="*"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    
    if (IR.find("/")>-1):
        IRstatement_split=re.split(r'(?:[/=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="/"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("%")>-1):
        IRstatement_split=re.split(r'(?:[%=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="%"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("+")>-1):
        IRstatement_split=re.split(r'(?:[+=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="+"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("-")>-1 and IR.find(">")<0 ):
        IRstatement_split=re.split(r'(?:[-=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="-"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2]   
        
    if (IR.find("<<")>-1):
        IRstatement_split=re.split(r'(?:[<<=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="<<"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find(">>")>-1):
        IRstatement_split=re.split(r'(?:[>>=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation=">>"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("&")>-1):
        IRstatement_split=re.split(r'(?:[&=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="&"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2]  
        
    if (IR.find("^")>-1):
        IRstatement_split=re.split(r'(?:[\^=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="^"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("|")>-1):
        IRstatement_split=re.split(r'(?:[|=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="|"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("<")>-1):
        IRstatement_split=re.split(r'(?:[<=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="<"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find(">")>-1 and IR.find("-")<0 ):
        IRstatement_split=re.split(r'(?:[>=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation=">"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("<=")>-1):
        IRstatement_split=re.split(r'(?:[<=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="<="
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2]  
        
    if (IR.find(">=")>-1):
        IRstatement_split=re.split(r'(?:[>=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation=">="
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("==")>-1):
        IRstatement_split=re.split(r'(?:[==])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="=="
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
        
    if (IR.find("!=")>-1):
        IRstatement_split=re.split(r'(?:[!=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="!="
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2]  
        
    if (IR.find("&&")>-1):
        IRstatement_split=re.split(r'(?:[&=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="&&"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2] 
   
        
    if (IR.find("--")>-1):
        IRstatement_split=re.split(r'(?:[-=])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="--"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2]                             
   
    #Unary Operation
    if (IR.find("UnaryType")>-1):
        IRstatement_split=re.split(r'(?:[= ])', IR)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="UnaryType"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=4):
            rightvariable1=IRstatement_split[3] 

    
    #Reference: Index and Member
    if (IR.find("->")>-1 ):
        IRstatement_split=re.split(r'(?:[>\[\]\-. ])', IR)
        #print(" IRstatement_split", IRstatement_split)
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="->"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=2):
            rightvariable1=IRstatement_split[1]
        if(len(IRstatement_split)>=3):
            rightvariable2=IRstatement_split[2]   
    
    #Convert
    if (IR.find("CONVERT")>-1 ):
        IRstatement_split=re.split(r'(?:[ =])', IR)  
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split) 
        operation="CONVERT"
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]
        if(len(IRstatement_split)>=3):
            rightvariable1=IRstatement_split[2]
        if(len(IRstatement_split)>=5):
            rightvariable2=IRstatement_split[4] 
            
    #Return
    if (IR.find("RETURN")>-1 ):
        IRstatement_split=re.split(r'(?:[ ])', IR) 
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="RETURN" 
        if(len(IRstatement_split)>=2):
            rightvariable1 = IRstatement_split[1]

            
    #Calls Operators
    if (IR.find("CALL")>-1 ):    
        IRstatement_split=re.split(r'(?:[ =])', IR) 
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        if(len(IRstatement_split)>=2):
            operation=IRstatement_split[1] 
        if(len(IRstatement_split)>=1):
            leftvariable=IRstatement_split[0]   
            
    # Condition
    if (IR.find("CONDITION")>-1 ):
        IRstatement_split=re.split(r'(?:[ ])', IR) 
        if("" in IRstatement_split):
            count=IRstatement_split.count("")
            for k in range(0, count):
                IRstatement_split.remove("")
        #print(" IRstatement_split", IRstatement_split)
        operation="CONDITION" 
        if(len(IRstatement_split)>=2):
            rightvariable1 = IRstatement_split[1] 
            #print(rightvariable1)
             
    return [operation,leftvariable,rightvariable1,rightvariable2]         

#cfg_path="/pro/decom/decomplie/cfg/crosschainmanager"
#[control_node_table, control_edge_table] = CFG_construction (cfg_path)
#print ("control_node_table", control_node_table)
#print ("control_edge_table", control_edge_table)

# python3 CFGconstruction.py