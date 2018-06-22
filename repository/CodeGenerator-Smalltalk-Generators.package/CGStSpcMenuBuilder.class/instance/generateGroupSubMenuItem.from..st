code-templates
generateGroupSubMenuItem: stream from: subMenuCollection

	subMenuCollection allButLastDo: [ : itemCollection | 
		itemCollection size > 1
			ifTrue: [
				itemCollection allButLastDo: [ : itemText |
					stream 
						nextPutAll: (self templateForAddSubmenuItem: itemText);
						nextPut: $;;						
						cr ].
			self templateForAddSubmenuItem: itemCollection last.
			self templateForAddMenuGroupBlock: stream ]
		ifFalse: [ 
			self templateForAddSubmenuItem: subMenuCollection last.
			self templateForAddMenuGroupBlock: stream ] ].
		

