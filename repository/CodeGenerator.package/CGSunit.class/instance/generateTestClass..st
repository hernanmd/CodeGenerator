code-generation
generateTestClass: aStringOrLiteral
	" Private - Compile a new Class named aString "

	^ (self classFor: self targetTestSuperclass)
			subclass: self targetClass
			instanceVariableNames: ''
			classVariableNames: ''
			poolDictionaries: ''
			category: self targetTestCategory;
			yourself.