code-cleaning
cleanMethodCategory
	" Remove methods in receiver's methodCategory "

	shouldCleanTarget
		ifTrue: [ 
			[ (self classFor: targetClass) organization removeCategory: self targetMethodCategory ]
			on: ProtocolRemovalException 
			do:[ : ex | 
				self cleanAllMethodsInCategory: self targetMethodCategory.
				ex retry ] ]