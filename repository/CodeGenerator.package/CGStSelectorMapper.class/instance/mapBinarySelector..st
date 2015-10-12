private
mapBinarySelector: aSymbol
	" #+ -> #plus "
	" If prefix selector is configured:
	
	#+ -> #testPlus "

	^ self prefixSelector , (self selectorsMap at: aSymbol)