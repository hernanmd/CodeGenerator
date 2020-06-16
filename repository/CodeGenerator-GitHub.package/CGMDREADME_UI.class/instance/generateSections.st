callbacks
generateSections

	self ghGenerator addSectionsNamed: self sectionSelector selectedItemsContents.
	self mdTextArea text: self ghGenerator sourceString.