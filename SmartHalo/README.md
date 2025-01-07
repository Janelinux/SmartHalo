## Installing

### environment
python>=3.7 
```
pip install opencv networkx pandas
```
Since slither uses solc, you will need to download solC-select and use solc-select install xxx to download the version of solc you want to use

### download solc-typed-ast

```
npm install -g solc-typed-ast
```

### download slither

```
pip3 install slither-analyzer
```

## Quick Start

Remember to change the file address to your local absolute address.Remember that so the file address is changed to your local absolute address, we are in the file is /pro/decom/SmartHelme, you can just replace all of this address.

We provide an contract in the demo, and you can use it in the following order.

### api.py

It provides a variety of basic methods for interacting with the api as well as ways to make the gpt offerings pass compilation.You need to change the api-key to your own. get_completion provides generic interactions, and preprocess provides the code that makes gpt provide compilables.You can automate the process of making gpt-supplied code compilable by modifying the main function.

```
python3 api.py
```

### slither.py

This file integrates various operations on slither.You can call this file on the compilable contract generated in the previous step to generate its control flow diagram, etc.

```
python3 slither.py
```

### DecompilationOptimization.py

It contains the integration of various core tools, you can find the way to handle types, function boundaries, state variables at the bottom of the file, you just need to change the path to the file.

```
python3 DecompilationOptimization.py
```

## evaluate

Below this folder are the methods we used to evaluate the tool and the collection of results produced by the tool under different experiments.

## giga_exp

Below this folder are some of the experiments we conducted after adjusting some of the results produced by gigahorse.

## Smartdagger

This is one of the tools we compare, and the folder contains the results of the comparison tools.

## demo

There is an intelligent contract and the results of optimizing the contract using this tool, the tool optimizes the contract on a function-by-function basis.

## dataset

There are 456 function pairs that we are comparing here.