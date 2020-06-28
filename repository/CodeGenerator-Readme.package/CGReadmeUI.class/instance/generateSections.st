callbacks
generateSections
	" Collect currently selected templates and write its contents to the receiver's text area "

	self readmeGenerator addSectionsNamed: self sectionSelector selectedItemsContents.
	self textArea text: self readmeGenerator sourceString