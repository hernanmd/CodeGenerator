code-templates
generateMenuSubMenuItems: itemCollection

	^ String streamContents: [ : stream | 
		self templateForAddMenuGroup: stream.
		itemCollection allButLastDo: [ : itemText | 
			stream 
				nextPutAll: (self templateForAddSubmenuItem: itemText);
				nextPut: $;;
				cr ].
		stream
			nextPutAll: (self templateForAddSubmenuItem: itemCollection last);
			nextPut: $] ]
