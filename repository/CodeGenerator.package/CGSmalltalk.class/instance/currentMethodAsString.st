accessing
currentMethodAsString
	" Answer a <String> with the current CompiledMethod as specified by target class and target selector "
	
	^ self currentMethod decompile decompileString.