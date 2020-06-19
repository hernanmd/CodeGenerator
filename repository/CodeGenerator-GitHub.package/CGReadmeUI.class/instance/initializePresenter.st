initialization
initializePresenter
	" Private - See superimplementor's comment "

"	self sectionSelector whenRootsChanged: [ : node | self halt ]."

	self sectionSelector whenSelectedItemChanged: [ :node | 
		" This doesn't work. It should reflect immediately checked/unchecked item 
		self sectionSelector selectionHolder value inspect."
		"node 
			ifNil: [ nil ] 
			ifNotNil: [ self addSectionsNamed: node asSet ]" ].
