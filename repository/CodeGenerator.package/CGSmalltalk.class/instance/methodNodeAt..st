code-getters
methodNodeAt: aSelector
	" Private - Answer a String with the source code of aSelector "

	| sourceText |	
		
	sourceText := ( self templateMethodAt: aSelector ) decompileWithTemps decompileString.
	^  self parserClass parseMethod: sourceText