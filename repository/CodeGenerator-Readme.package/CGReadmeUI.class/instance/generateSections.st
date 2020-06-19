callbacks
generateSections
	" Collect currently selected templates and write its contents to the receiver's text area "

	self readmeGenerator addSectionsNamed: self sectionSelector selectedItemsContents.
	self mdTextArea text: self readmeGenerator sourceString.