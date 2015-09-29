code-generation
generateClass: aString
	" Private - Compile a new Class named aString "

	^ (self classFor: self targetSuperclass)
			subclass: aString asSymbol
			instanceVariableNames: self defaultInstanceVariables
			classVariableNames: self defaultClassVariables
			poolDictionaries: ''
			category: self targetClassCategory;
			yourself.