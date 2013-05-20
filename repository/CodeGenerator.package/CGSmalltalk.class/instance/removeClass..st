code-cleaning
removeClass: className
	" Remove the class named className from the system "
	
	| clsToDelete |
	
	self targetClass = ( clsToDelete := self classFor: className )
		ifTrue: [ self targetClass: nil ].
	clsToDelete isNil
		ifFalse: [ 
			clsToDelete removeFromSystem.
			"self removeClassCategory."
		]
		
	