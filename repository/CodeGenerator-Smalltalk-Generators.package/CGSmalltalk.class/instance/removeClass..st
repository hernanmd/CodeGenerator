code-cleaning
removeClass: className
	" Remove the class named className from the system "

	| clsToDelete |
	(clsToDelete := self classFor: className)
		ifNotNil: [ clsToDelete removeFromSystem ].
	targetClass = clsToDelete
		ifTrue: [ targetClass := nil ]