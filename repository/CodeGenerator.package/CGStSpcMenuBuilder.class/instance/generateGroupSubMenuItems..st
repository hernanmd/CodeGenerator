code-templates
generateGroupSubMenuItems: groupCollection

	^ String streamContents: [ : stream | 
		self templateForAddMenuGroup: stream.
		groupCollection 
			allButLastDo: [ : itemCollection | 
				itemCollection allButLastDo: [ : itemText |
					stream 
						nextPutAll: (self templateForAddSubmenuItem: itemText);
						nextPut: $;;						
						cr ].
					self templateForAddSubmenuItem: itemCollection last.				
					self templateForAddMenuGroupBlock: stream ].
		stream
			nextPutAll: (self templateForAddSubmenuItem: groupCollection last last);
			nextPut: $];
			nextPut: $] ]
