initialization
initializeTextArea
	
	self textArea 
		whenBuiltDo: [ : ann |
			(ann widget findDeeplyA: RubPluggableTextMorph) 
				font: StandardFonts codeFont  ]