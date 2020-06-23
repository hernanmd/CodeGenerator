code-cleaning
confirmRemoveGeneratedCode
	targetClass
		ifNotNil: [ (self
				confirm: 'Remove generated class: ' , targetClass asString , '?')
				ifTrue:
					[ "			(self confirm: 'Remove generated class category: ' , self classCategoryName asString , '?')
				ifTrue: [ self removeClassCategory ] " self removeClass: targetClass ] ]