code-generation
compile: srcString selector: selectorString
	" Private - Compile sourceString with selectorString in the receiver's configured target class "
	" If srcString is empty, then compile only the selectorString, otherwise, assume the srcString contains the selectorString "

	| realSource |
	
	self targetSelector: (Parser new parseSelector: selectorString).
	self generateMethodHeader.
	(realSource := self validateSource: srcString) isEmpty
		ifTrue: [ self compileSelector: selectorString ]
		ifFalse: [ self compileSource: realSource ]
