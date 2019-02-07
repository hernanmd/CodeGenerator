*CodeGenerator-NeoCSV
cgSelectSkipHeaders
	" Answer a <String> with a block to apply when reading a CSV file "
	
	^ UIManager default 
		request: 'Please specify how many header lines to skip'
		initialAnswer: 0 
		title: 'CodeGenerator - NeoCSV'

