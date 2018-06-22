code-templates
templateBadges
	" Answer a <String> with receiver's badges to be included in the README.md "

	^ String streamContents: [ : stream |
		self badges do: [ : badge | 
			stream 
				nextPutAll: (self perform: ('badge' , badge) asSymbol);
				nextPutTerminator ] ]
