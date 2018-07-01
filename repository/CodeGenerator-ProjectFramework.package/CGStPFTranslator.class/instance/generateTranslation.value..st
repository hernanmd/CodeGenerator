accessing
generateTranslation: selector value: userMessage

	^ 'at: #t{1} put: {2};
	 ' format: { 
		selector capitalized .
		userMessage surroundedBySingleQuotes }