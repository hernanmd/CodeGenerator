private-badges
joinBadges
	" Answer a <String> representing a READNE.md document "
		
	^ self badges do: [ : badge | 
		String streamContents: [ : stream |
			stream 
				nextPutAll: (self perform: 'badge' , badge capitalized);
				nextPutTerminator ] ]
	
