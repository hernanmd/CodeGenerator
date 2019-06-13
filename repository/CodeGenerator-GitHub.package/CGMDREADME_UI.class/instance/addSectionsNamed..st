initialization
addSectionsNamed: item

	self sectionSelector highlightedItem
		ifNotNil: [ : listModel |
			listModel selected
				ifTrue: [ 
					| sectionSelection |					
					sectionSelection := self sectionSelector highlightedItem content.
					self ghGenerator addSectionsNamed: (self sectionSelector selectedItems collect: #content) ]
				ifFalse: [ self ghGenerator addSectionsNamed: item ] ].

	