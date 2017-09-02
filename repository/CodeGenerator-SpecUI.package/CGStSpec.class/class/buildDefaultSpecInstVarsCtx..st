code-generation
buildDefaultSpecInstVarsCtx: aClass
	" Answer a <String> with spec instance variables to be written in #initializeWidgets "
	
	^ String streamContents: [ : stream |
		aClass instVarNames allButLastDo: [ : instVarName |
			stream 
				nextPutAll: 'add: #';
				nextPutAll: instVarName;
				nextPut: $;; crtab; tab; tab ].
		stream
			nextPutAll: 'add: #';
			nextPutAll: aClass instVarNames last;
			nextPut: $. ]	
