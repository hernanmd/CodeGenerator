code-generation
buildInstVarsCtx
	" Answer a <String> with spec instance variables to be written in #initializeWidgets "
	
	^ String streamContents: [ : stream |
		self targetClass instVarNames do: [ : instVarName |
			stream 
				nextPutAll: instVarName; tab;
				nextPutAll: 'ListModel'; crtab ] ]	
		