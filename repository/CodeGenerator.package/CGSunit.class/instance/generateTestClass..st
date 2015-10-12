code-generation
generateTestClass: aStringOrLiteral
	" Private - Compile a new Class named aString "

	^ (self classFor: self targetTestSuperclass)
			subclass: (self classFor: aStringOrLiteral) name
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self targetTestCategory;
			yourself.