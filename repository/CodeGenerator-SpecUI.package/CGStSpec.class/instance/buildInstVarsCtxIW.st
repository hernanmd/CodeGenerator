code-generation
buildInstVarsCtxIW
	" Answer a <String> with spec instance variables to be written in #initializeWidgets "
	
	^ String streamContents: [ : stream |
		self targetClass instVarNames do: [ : instVarName |
			stream 
				nextPutAll: instVarName; tab;
				nextPutAll: (self resolveWidgetFor: instVarName) asString; 
				tab; tab; nextPutTerminator ] ]	
		