code-generation
generateClass: aString
	" Private - Compile a new Class "

	^ (self classFor: self targetSuperclass)
			subclass: aString asSymbol
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self targetClassCategory;
			yourself.