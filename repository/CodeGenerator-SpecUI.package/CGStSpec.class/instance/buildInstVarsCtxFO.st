code-generation
buildInstVarsCtxFO
	" Answer a <String> with spec instance variables to be written in #initializeWidgets "
	
	| instVars |

	instVars := self targetClass instVarNames.
	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'self focusOrder'; crtab; tab.		
		instVars allButLastDo: [ : instVarName |
			stream 
				nextPutAll: 'add: self ';
				nextPutAll: instVarName; 
				nextPut: $;; crtab ].
		stream
			nextPutAll: 'add: self ';
			nextPutAll: instVars last;
			nextPut: $. ]