code-generation
joinTemplates
	" Answer a <String> representing a READNE.md document "
		
	^ String streamContents: [ : stream |
		self sections do: [ : sSym | 		
			stream 
				nextPutAll: (self perform: ('template' , sSym capitalized) asSymbol);
				nextPutTerminator ] ]

