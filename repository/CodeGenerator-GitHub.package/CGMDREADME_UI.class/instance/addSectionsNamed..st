initialization
addSectionsNamed: item

	self sectionSelector highlightedItem
		ifNotNil: [ : listModel |
			listModel selected
				ifTrue: [ 
					| selectedSectionNames |
					" This is crap because TreeModel is not updating latest user selected item, so I have to retrieve all selections by hand "	
					selectedSectionNames := self sectionSelector spec instance treeModel selection
						ifNotNil: [ : sel | (sel selectedNodePathList flatCollect: #contents) collect: #item ]
						ifNil: [ Array empty ].
					self ghGenerator addSectionsNamed: selectedSectionNames ]
				ifFalse: [ self halt. self ghGenerator addSectionsNamed: item ] ].

	