code-generation
buildInstVarsCtxIP
	" Answer a <String> with spec instance variables to be written in #initializePresenter. Labels are skipped. "
	
	| instVars |
	instVars := self targetClass instVarNames reject: [ : iVarName |
		iVarName asLowercase endsWith: 'label' ].	
	^ String streamContents: [ : stream |
		instVars do: [ : instVarName |
			stream 
				nextPutAll: 'self ';
				nextPutAll: instVarName ] ]	
		