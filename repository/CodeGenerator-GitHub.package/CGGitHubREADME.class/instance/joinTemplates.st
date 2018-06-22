code-generation
joinTemplates
	" Answer a <String> representing a READNE.md document "
		
	^ String streamContents: [ : stream |
		self sections do: [ : sSym | 		
			self halt.
			stream 
"				nextPutAll: (self perform: ('template' , sSym capitalized) asSymbol);"
				nextPutAll: (self perform: sSym asSymbol);				
				nextPutTerminator ] ]

