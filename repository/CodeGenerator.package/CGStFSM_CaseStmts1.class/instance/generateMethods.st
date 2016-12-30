accessing
generateMethods

	self transitions associations 
		do: [ : assoc | 
			self sourceString: (self templateForTransition: assoc key to: assoc value).
			self generateMethod ]
		displayingProgress: 'Generating FSM'