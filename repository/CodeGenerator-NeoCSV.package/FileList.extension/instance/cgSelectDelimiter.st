*CodeGenerator-NeoCSV
cgSelectDelimiter

	| commonDelimiters commonDelimitersDescriptions |
	
	commonDelimiters := { $, . $: . $; . Character tab . Character space . $| }.
	commonDelimitersDescriptions := { 'Comma (,)' . 'Colon (:)' . 'Semicolon (;)' . 'Tab (\t)' . 'Space' . 'Bar (|)'}.
	^ UIManager default 
		chooseFrom: commonDelimitersDescriptions 
		values: commonDelimiters 
		message: 'Select a valid delimiter'.
	