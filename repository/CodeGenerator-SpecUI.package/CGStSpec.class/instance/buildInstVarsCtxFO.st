code-generation
buildInstVarsCtxFO
	" Answer a <String> with spec initialize focus code. Labels are skipped from focus "

	| instVars |
	instVars := self targetClass instVarNames
		reject: [ :iVarName | iVarName asLowercase endsWith: 'label' ].
	^ instVars
		ifEmpty: [ String empty ]
		ifNotEmpty: [ String
				streamContents: [ :stream | 
					stream
						nextPutAll: 'self focusOrder';
						crtab;
						tab.
					instVars
						allButLastDo: [ :instVarName | 
							stream
								nextPutAll: 'add: self ';
								nextPutAll: instVarName;
								nextPut: $;;
								crtab ].
					stream
						nextPutAll: 'add: self ';
						nextPutAll: instVars last ] ]