initialization
initializeTextArea
	
	self mdTextArea 
		whenBuiltDo: [ : ann |
			(ann widget findDeeplyA: RubPluggableTextMorph) 
				font: StandardFonts codeFont  ]