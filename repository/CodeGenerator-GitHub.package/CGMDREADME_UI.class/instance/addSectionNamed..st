initialization
addSectionNamed: item

	| sectionSelection |
	
	self halt.
	(sectionSelection := self sectionSelector highlightedItem) selected 
		ifTrue: [ self ghGenerator addSectionNamed: (item add:  sectionSelection content; yourself) ]
		ifFalse: [ self ghGenerator addSectionNamed: item ].

	