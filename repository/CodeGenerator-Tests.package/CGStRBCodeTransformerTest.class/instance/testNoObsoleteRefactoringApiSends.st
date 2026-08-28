tests - regression
testNoObsoleteRefactoringApiSends
	"Regression for §8.1: the transformer must not send the removed selectors
	 #primitiveExecute, #handleFailure: or #asClass in any of its methods."

	| offenders |
	offenders := OrderedCollection new.
	CGStRBCodeTransformer methodsDo: [ :m |
			m messages do: [ :sel |
					(#( primitiveExecute handleFailure: asClass ) includes: sel)
						ifTrue: [ offenders add: m selector -> sel ] ] ].
	self assert: offenders isEmpty description: offenders printString