code-templates
generateMenuActionItems: itemCollection

	^ String streamContents: [ : stream | 
		self templateForAddMenuGroup: stream.
		itemCollection allButLastDo: [ : itemText | 
			stream 
				nextPutAll: (self templateForAddItem: itemText);
				nextPut: $;;
				cr ].
		stream
			nextPutAll: (self templateForAddItem: itemCollection last);
			nextPut: $] ]
