*CodeGenerator-Pharo
cgSelectReadingMethod

	| readingSelectors readingDescriptions |
	
	readingSelectors := { 
		#generateReadDoScript . 
		#generateReadCollectScript . 
		#generateReadSelectScript }.
	readingDescriptions := { 'do:' . 'collect:' . 'select:' }.
	^ UIManager default 
		chooseFrom: readingDescriptions 
		values: readingSelectors 
		message: 'Select a reading method'.
	