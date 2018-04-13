[![license-badge](https://img.shields.io/badge/license-MIT-blue.svg)](https://img.shields.io/badge/license-MIT-blue.svg)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active)

# Description

CodeGenerator package in Pharo Smalltalk

# Installation

There are several ways to install the **CodeGenerator** package:

## Stable version

[//]: # (pi)
```smalltalk
Metacello new	
  baseline: 'CodeGenerator';	
  repository: 'github://hernanmd/CodeGenerator/repository';	
  load.
```
## Development version

[//]: # (pidev)
```smalltalk
Metacello new	
  baseline: 'CodeGenerator';	
  repository: 'github://hernanmd/CodeGenerator/repository';	
  load.
```

## Baseline String

```smalltalk
...
spec				
	baseline: 'CodeGenerator'				
	with: [ spec repository: 'github://hernanmd/CodeGenerator/repository' ].
...
```

# Usage Examples

## Simple class with getter and setter

The following generator will create a new class in the image, adding two instance variables and creating their accessors (getters and setters):

```smalltalk
CGSmalltalk new
	setCleanTarget;
	targetClassCategory: 'MPIRunner-Core';
	targetClass: #MPIRunner;
	addIVarsWithAccessors: #(#nproc #submitToQueue).
Smalltalk tools browser openOnClass: #MPIRunner asClass.
```

## Class Hierarchy Generation

Generation of Class Hierarchy with three concrete subclasses, specifying a prefix for method names:

```smalltalk
CGStAbstractClassPattern new
	setCleanTarget;
	targetClassCategory: 'CGGeneratedCode-Core';
	targetClass: #CGExampleAbstractClass2;
	concreteClassesCount: 3;
	concreteClassNamePattern: #CGExampleConcreteClass2;
	generateClasses;
	operationsCount: 3;
	operationsName: #exampleOperation;
	generateOperations.
Smalltalk tools browser openOnClass: #CGExampleAbstractClass2 asClass.		
```

The resulting hierarchy is:

```
CGExampleAbstractClass2
  CGExampleConcreteClass21
  CGExampleConcreteClass22
  CGExampleConcreteClass23
```

## Singleton Design Pattern

```smalltalk
CGStSingleton new
	setCleanTarget;
	targetClassCategory: 'SingletonEx1';
	targetClass: #SingletonEx1;
	generateMethods.
Smalltalk tools browser openOnClass: #SingletonEx1 asClass.
```	
	
## Visitor Design Pattern

```smalltalk
CGStBuilderPattern uniqueInstance
        setCleanTarget;
        targetClassCategory: 'CGGeneratedCode-Core';
        " Abstract Builder class name (ex: UIBuilder) "
        targetClass: #CGExCarBuilder;
        productNames: #('CGExFordCar' 'CGExBMWCar' 'CGExHondaCar');
        builderNames: #('CGExFordBuilder' 'CGExBMWBuilder' 'CGExHondaBuilder');
        familyNames: #('CGExCarEngine' 'CGExCarBody');
        " How many product parts per family ? "
        productPartsPerFamilyCount: 3;
        directorClassName: #CGExCarAssembler;
        generateClasses.
Smalltalk tools browser openOnClass: #CGExCarBuilder asClass.
```

## SUnit Tests

SUnit Tests Generator.

```smalltalk
CGSunit new
	setCleanTarget;
	inputClass: CGSmalltalk;
	targetTestClass: #TestCGSmalltalkExample;
	targetTestCategory: 'CGGeneratedCode';
	generateSetUp: true;
	generateTests.
Smalltalk tools browser openOnClass: #TestCGSmalltalkExample asClass.
```

## Spec

```smalltalk
CGStSpec new
	setCleanTarget;
	targetClass: #SpecModelClass1;
	title: 'Example Spec 1';
	generateMethods.
Smalltalk tools browser openOnClass: #SpecModelClass1 asClass.
```

## Convenience Methods

```smalltalk
CGStConvenienceMethods uniqueInstance
        setCleanTarget;
        parameterCount: 1;
        targetSelector: #cgConvEx1;
        targetClassCategory: 'ConvenienceMethodsEx';
        targetClass: #ConvenienceMethodsEx;
        generateMethods.
```

## Finite State Machine

```smalltalk
CGStFSM_CaseStmts1 new
	setCleanTarget;
	targetClassCategory: 'FSM-Core';
	targetClass: #FSMCaseStmts1;
	targetSelector: #someMessage;
	initialState: #state0;
	transitions: (Dictionary new 
		at: #state0 put: #state1;
		at: #state1 put: #state0;
		yourself);
	generateMethods.
Smalltalk tools browser openOnClass: #FSMCaseStmts1 asClass.
```
## Resource Importer

This generator open a directory selector dialog. The selected directory is used as source to scan image files and import them as Smalltalk methods. Currently supported file types are: 'jpg' 'jpeg' 'png' 'gif' 'ico' 'bmp'. For each image file, the name of the file concatenated with its extension (uppercase first extension letter) is used as method name. 

```smalltalk
CGStImageImporter new
	setCleanTarget;
	targetClass: #CGExampleResources1;
	targetClassCategory: 'CGGeneratedCode';
	import.
Smalltalk tools browser openOnClass: #CGExampleResources1 asClass.
```

This generator open a directory selector dialog. The selected directory is used as source to scan text files and import them as Smalltalk methods. Currently supported file types are: 'txt' 'csv'. For each image file, the name of the file concatenated with its extension (uppercase first extension letter) is used as method name. 

```smalltalk
CGStTextImporter new
	setCleanTarget;
	targetClass: #CGExampleResources2;
	targetClassCategory: 'CGGeneratedCode';
	import.
Smalltalk tools browser openOnClass: #CGExampleResources2 asClass.
```

## NSIS Installer Script

```smalltalk
CGNSISIPharo5AppInstaller new
	product: 'MyProduct';
	identity: 'MyName';
	version: '1.0.0';
	url: 'http://www.google.com';
	launcher: 'MyLauncher.exe';
	licenseEnFileName: 'LICENSE_ENGLISH';
	iconFile: 'MyProduct.ico';
	welcomeBmpFile: 'MyProduct.bmp';
	splashBMPFileName: 'Splash.bmp';
	generate.
```

## ProjectFramework

Requires: [ProjectFramework](https://github.com/hernanmd/ProjectFramework "ProjectFramework")

```smalltalk
CGStProjectFramework new
	setCleanTarget;
	targetClassCategory: 'PFExampleCategory';
	targetSuperclass: #PFStandardProjectWindow;		
	targetClass: #PFExampleWindow;
	applicationClassName: #PFExampleApplicationClass;
	projectClassName: #PFExampleProjectClass;
	title: 'Example Project UI';
	closeAfterCreateProjectSetting: true;
	generateMethods.
Smalltalk tools browser openOnClass: #PFExampleWindow asClass.
```

## Magritte 

Example setting priorities:
```smalltalk
CGStMagritte new
	inputClass: ModelClass1;
	targetClass: ModelClass1;
	setBooleanAttributes: 		'instVar1' 			label: 'label iVar1' 			priority: 10;
	setDateAndTimeAttributes: 	'instVar2' 			label: 'label Date and Time' 	priority: 20;
	setDateAttributes: 		'instVar3' 			label: 'label Date' 			priority: 30;
	setFileAttributes: 		'iVarFile' 			label: 'label File' 			priority: 40;
	setMemoAttributes: 		'iVarMemo' 			label: 'label Memo' 			priority: 50;
	setMultiOptionAttributes: 	'iVarMultiOption' 	label: 'label Multi Option' 	priority: 60;
	setNumberAttributes: 		'iVarInteger' 		label: 'label Integer' 			priority: 70.
Smalltalk tools browser openOnClass: ModelClass1.
```

Example setting defaults:
```smalltalk
CGStMagritte new
	inputClass: ModelClass1;
	targetClass: ModelClass1;
	setBooleanAttributes: 		'instVar1' 		default: true					label: 'label iVar1' 				priority: 10;
	setDateAndTimeAttributes: 	'instVar2' 		default: DateAndTime today 		label: 'label Date and Time'	 	priority: 20;
	setDateAttributes: 			'instVar3' 		default: Date today 			label: 'label Date' 				priority: 30;
	setFileAttributes: 			'iVarFile' 										label: 'label File' 				priority: 40;
	setMemoAttributes: 			'iVarMemo' 		default: 'Memo'					label: 'label Memo' 				priority: 50;
	setMultiOptionAttributes: 	'iVarMulti' 	default: #(One Two)			label: 'label Multi Option'		 	priority: 60;
	setNumberAttributes: 		'iVarInteger' 	default: 10 				label: 'label Integer'	 			priority: 70.
Smalltalk tools browser openOnClass: ModelClass1.		
``` 


# Contribute

**Working on your first Pull Request?** You can learn how from this *free* series [How to Contribute to an Open Source Project on GitHub](https://egghead.io/series/how-to-contribute-to-an-open-source-project-on-github)

If you have discovered a bug or have a feature suggestion, feel free to create an issue on Github.
If you have any suggestions for how this package could be improved, please get in touch or suggest an improvement using the GitHub issues page.
If you'd like to make some changes yourself, see the following:    

  - Fork this repository to your own GitHub account using the web interface.
  - Clone it to your local device: `git clone git@github.com:YOUR_NAME/.git`
  - Do some modifications
    - If you add some feature, create your feature branch: `git checkout -b MY_NEW_FEATURE`
  - Test.
  - Add <your GitHub username> to add yourself as author below.
  - Finally, submit a pull request with your changes!
  - This project follows the [all-contributors specification](https://github.com/kentcdodds/all-contributors). Contributions of any kind are welcome!

# License
	
This software is licensed under the MIT License.

Copyright Hernán Morales Durand, 2018.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# Authors

Hernán Morales Durand

