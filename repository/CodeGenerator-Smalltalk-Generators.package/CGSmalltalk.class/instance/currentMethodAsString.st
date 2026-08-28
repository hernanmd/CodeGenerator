accessing
currentMethodAsString
	"Answer a <String> with the source of the current method (target class + target
	 selector), using the current CompiledMethod>>sourceCode API (Pharo 13 removed the
	 decompile/decompileString path)."

	^ self currentMethod sourceCode