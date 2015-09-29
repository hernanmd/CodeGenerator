code-generation
generateTestClass: aString
	" Private - Compile a new Class named aString "

	^ (self classFor: self targetTestSuperclass)
			subclass: aString asSymbol
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self targetTestCategory;
			yourself.