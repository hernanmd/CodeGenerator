code-cleaning
confirmRemoveGeneratedCode
	
	targetClass notNil
		ifTrue: [ 
			(self confirm: 'Remove generated class: ' , targetClass asString , '?')
				ifTrue: [ self removeClass: targetClass ].
"			(self confirm: 'Remove generated class category: ' , self classCategoryName asString , '?')
				ifTrue: [ self removeClassCategory ] "]

			