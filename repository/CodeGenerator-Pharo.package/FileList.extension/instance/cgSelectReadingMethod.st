*CodeGenerator-Pharo
cgSelectReadingMethod

	| readingSelectors readingDescriptions |
	
	readingSelectors := { 
		#generateReadDoScript . 
		#generateReadCollectScript . 
		#generateReadSelectScript }.
	readingDescriptions := { 'do:' . 'collect:' . 'select:' }.
	^ self class 
		chooseFrom: readingDescriptions 
		values: readingSelectors 
		message: 'Select a reading method'.
	