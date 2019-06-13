initialization
initializePresenter
	" Private - See superimplementor's comment "

"	self sectionSelector whenRootsChanged: [ : node | self halt ]."

	self sectionSelector whenSelectedItemsChanged: [ :node | 
		node 
			ifNil: [ nil ] 
			ifNotNil: [ 
				self sectionSelector inspect.
				self logCr: (self sectionSelector selectedItem ifNotNil: [ : si | si content ]).
				self logCr: (self sectionSelector selectedItems collect: #content).
				self logCr: (self sectionSelector highlightedItem ifNotNil: [ : si | si content ]).
				self addSectionsNamed: node asSet ] ].
