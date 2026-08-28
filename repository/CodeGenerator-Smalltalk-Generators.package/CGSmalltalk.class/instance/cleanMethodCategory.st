code-cleaning
cleanMethodCategory
	" Remove methods in receiver's methodCategory "

	shouldCleanTarget
		ifTrue: [ 
			[ (self classFor: targetClass) organization removeProtocol: self targetMethodCategory ]
			on: ProtocolClientError 
			do:[ : ex | 
				self cleanAllMethodsInCategory: self targetMethodCategory.
				ex retry ] ]