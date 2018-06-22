private
mapKeywordSelector: aSymbol
	" #message:receiver:arguments:  -> #MessageReceiverArguments "
	" If prefix selector is configured:
	
	#message:receiver:arguments: -> #testMessageReceiverArguments "

	^ self prefixSelector , (((aSymbol findTokens: $:) collect: #capitalized) joinUsing: String empty).