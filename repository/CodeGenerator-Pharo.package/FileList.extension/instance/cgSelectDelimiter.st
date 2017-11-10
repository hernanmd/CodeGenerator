*CodeGenerator-Pharo
cgSelectDelimiter

	| commonDelimiters commonDelimitersDescriptions |
	
	commonDelimiters := { $, . $: . $; . Character tab . Character space }.
	commonDelimitersDescriptions := { 'Comma (,)' . 'Colon (:)' . 'Semicolon (;)' . 'Tab (\t)' . 'Space' }.
	^ self class 
		chooseFrom: commonDelimitersDescriptions 
		values: commonDelimiters 
		message: 'Select a valid delimiter'.
	