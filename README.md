# Smart contract decompilation code enhancement and optimization tool

<font size="4">***The current decompiler has  defects***</font>

![motivatingExample](images/README/1736236010920.png)

<font size="3">The output of the current decompiler has defects that hinder downstream tasks of program analysis, such as vulnerability detection and component analysis.</font>

<font size="3">We have summarized for the first time the three defects of current decompilers.</font>

<font size="3">The first type is inaccurate recovery of variable types. Referring to lines 1, 2, 10, and 11 in the figure, it is not difficult to find that there are type errors in the decompiled code, which is unfavorable for identifying specific vulnerabilities (such as overflow vulnerabilities)<font>

<font size="3">The second type is the lack of important contract attribute information, which refers to the semantic information represented by key state variables of smart contracts, such as account balance, whitelist, address, etc. It can be seen that there is a re-entry vulnerability in the source code in the figure (lines 7-8), where the contract modifies the state variable balance after external calls. From the name, it can be seen that the contract attribute corresponding to the state variable balance is account balance, making it easy to identify this vulnerability. However, in the decompilation code (lines 11-13), balance becomes a meaningless variable name, making it difficult to infer contract properties and identify this vulnerability.<font>

<font size="3">The third type is inaccurate method boundary recognition. As can be seen in the figure, there are two method handles and validate, but in the decompiled code, there is only the method handle. After carefully comparing the source code and decompiled code, we found that the method validate was mistakenly included in the method handle (lines 10-11)</font>

<font size="4">***OverView***</font>

![1736236806928](images/README/1736236806928.png)

<font size="3">Our input is the output of the smart contract decompiler.</font>

<font size="3">Firstly, generate a dependency graph by extracting dependency relationships from the program through static analysis.</font>

<font size="3">Next, based on the dependency graph and solidity document, generate prompt words to guide the large model for decompilation and code optimization.</font>

<font size="3">For the initial optimization code, we perform two correctness validations. If the validation is successful, we generate output. If it fails, we return to the large model for re optimization</font>

## Quick Start

<font size="3">Here, we present the artifact of SmartHalo, the evaluation dataset used to evaluating the effectiveness of SmartHalo, the static violation rejection rules integrated by SmartHalo and the details of manual summarizing process for contract attribute candidates .</font>

The usage method of this tool can be found in the smartAlo folder. You can click [here](./SmartHalo/README.md) to read.

## Dataset

<font size="3">This dataset contains the evaluation dataset used for our evaluation experiments in Section 5, as well as three vulnerability datasets used for evaluating the effectiveness for downstream tasks in Section 6.</font>

## SmartHalo

<font size="3">The artifact that are inplemented according to our proposed decompiler output optimization method</font>

## Static_Violation_Rejection_Rules.pdf

<font size="3">This documentation provides the static violation rejection rules integrated by SmartHalo in Section 4.3.</font>

## The details of manual summarizing process for contract attribute candidates.pdf

<font size="3">This documentation provides the details of manual summarizing process for contract attribute candidates in Section 4.2</font>

## Manual_Investigation_Results_for_Dataset

<font size="3">This documentation provides our manual investigation results on the evaluation dataset.</font>

## Authors

Zeqin Liao **(Sun Yat-sen University)** [[liaozq8@mail2.sysu.edu.cn](mailto:liaozq8@mail2.sysu.edu.cn)] ,Yuhong Nan **(Sun Yat-sen University)** [[nanyh@mail.sysu.edu.cn](mailto:nanyh@mail.sysu.edu.cn)], Zixu Gao **(Sun Yat-sen University)** [[gaozx9@mail2.sysu.edu.cn](mailto:gaozx9@mail2.sysu.edu.cn)], Henglong Liang **(Sun Yat-sen University)** [[lianghlong@mail2.sysu.edu.cn](mailto:lianghlong@mail2.sysu.edu.cn)], Sicheng Hao **(Sun Yat-sen University)** [[haosch@mail2.sysu.edu.cn](mailto:haosch@mail2.sysu.edu.cn)], Peifan Reng **(Sun Yat-sen University)** [[rushfinen@gmail.com](mailto:rushfinen@gmail.com)], Zibin Zheng **(Sun Yat-sen University)** [[zhzibin@mail.sysu.edu.cn](mailto:zhzibin@mail.sysu.edu.cn)]
