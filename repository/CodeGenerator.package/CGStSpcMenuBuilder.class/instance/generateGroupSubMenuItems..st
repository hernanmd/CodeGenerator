code-templates
generateGroupSubMenuItems: subMenuCollection
	" Answer a <String> with all elements in subMenuCollection as sub menu items "
	
	^ String streamContents: [ : stream | 
		self templateForAddMenuGroup: stream.
		self generateGroupSubMenuItem: stream from: subMenuCollection.
		stream
			nextPutAll: (self templateForAddSubmenuItem: subMenuCollection last last);
			nextPut: $];
			nextPut: $] ]
