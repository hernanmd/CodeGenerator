initialization
initializePresenter
	" Private - See superimplementor's comment "

	self sectionSelector whenSelectedItemsChanged: [ :node | 
		node 
			ifNil: [ nil ] 
			ifNotNil: [ self addSectionNamed: node ] ].
