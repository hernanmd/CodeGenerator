code-generation
buildDefaultSpecInstVarsCtx
	" Answer a <String> with spec instance variables to be written in #initializeWidgets "
	
	^ String streamContents: [ : stream |
		self targetClass instVarNames do: [ : instVarName |
			stream 
				nextPutAll: 'add: #';
				nextPutAll: instVarName; crtab ] ]	
