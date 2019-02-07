*CodeGenerator-NeoCSV
cgSelectReadingBlock
	" Answer a <String> with a block to apply when reading a CSV file "
	
	| defaultBlock |
	
	defaultBlock := '[ : row | Transcript show: row first; cr ]'.
	^ UIManager default 
		request: 'Please specify a reading block'
		initialAnswer: defaultBlock 
		title: 'CodeGenerator - NeoCSV'

