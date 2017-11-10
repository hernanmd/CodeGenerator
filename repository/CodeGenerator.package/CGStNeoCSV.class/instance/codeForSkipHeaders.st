code-templates
codeForSkipHeaders
	" Private - Answer a <String> for skipping headers in the generated code "
	
	^ String streamContents: [ : stream |
		stream
			nextPut: self skipHeader asString;
			space;
			nextPutAll: ' timesRepeat: [ reader skipHeader ].' ]