code-generation
generateTestClass: aString
	" Private - Compile a new Class "

	^ (self classFor: targetTestSuperclass)
			subclass: aString asSymbol
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self targetTestCategory;
			yourself.