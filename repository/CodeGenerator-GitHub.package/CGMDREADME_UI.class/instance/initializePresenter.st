initialization
initializePresenter
	" Private - See superimplementor's comment "

"	self sectionSelector whenRootsChanged: [ : node | self halt ]."

	self sectionSelector whenSelectedItemsChanged: [ :node | 
		node 
			ifNil: [ nil ] 
			ifNotNil: [ self addSectionsNamed: node asSet ] ].
