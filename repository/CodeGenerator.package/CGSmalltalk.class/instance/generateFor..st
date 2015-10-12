code-generation
generateFor: anObject
	" Write the code for anObject in aSelector "

	self sourceString: (String streamContents: [ : stream |
		stream 
			nextPutAll: self targetSelector;
			cr; crtab;
			nextPutAll: '^ ';
			nextPutAll: anObject asSourceCode surroundedBySingleQuotes ]).
	self preGenerate.
	self compileCodeStream.
	self postGenerate.

