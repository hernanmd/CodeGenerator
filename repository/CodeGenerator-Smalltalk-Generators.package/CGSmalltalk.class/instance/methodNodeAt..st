accessing
methodNodeAt: aSelector
	"Private - Answer the parsed method node for aSelector (a <Symbol>) taken from the
	 template class, using CompiledMethod>>sourceCode (Pharo 13 removed decompileWithTemps/
	 decompileString)."

	^ self parserClass parseMethod: (self templateMethodAt: aSelector) sourceCode