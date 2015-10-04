code-cleaning
removeClass: className
	" Remove the class named className from the system "
	
	| clsToDelete |
	
	(clsToDelete := self classFor: className) isNil
		ifFalse: [ clsToDelete removeFromSystem ].
	targetClass = clsToDelete
		ifTrue: [ targetClass := nil ].
		
	