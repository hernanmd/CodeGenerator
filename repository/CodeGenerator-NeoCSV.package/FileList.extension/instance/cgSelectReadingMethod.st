*CodeGenerator-NeoCSV
cgSelectReadingMethod

	| readingSelectors readingDescriptions |
	
	readingSelectors := { 
		#generateReadTemplate . 
		#generateReadCollectScript . 
		#generateReadSelectTemplate }.
	readingDescriptions := { 'do:' . 'collect:' . 'select:' }.
	^ UIManager default 
		chooseFrom: readingDescriptions 
		values: readingSelectors 
		message: 'Select a reading method'.
	