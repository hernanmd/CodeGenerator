code-generation
buildInstVarsCtxIP
	" Answer a <String> with spec instance variables to be written in #initializePresenter "
	
	^ String streamContents: [ : stream |
		self targetClass instVarNames do: [ : instVarName |
			stream 
				nextPutAll: 'self ';
				nextPutAll: instVarName; 
				nextPut: $.; crtab ] ]	
		