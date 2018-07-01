initialization
initializePresenter
	" Private - See superimplementor's comment "

	self sectionSelector 
			whenHighlightedItemChanged: [ :node | 
			| item |
			item := node ifNil: [ nil ] ifNotNil: [ node content ].
			self addSectionNamed: item ].
