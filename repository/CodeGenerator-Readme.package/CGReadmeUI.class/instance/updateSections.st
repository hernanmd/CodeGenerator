callbacks
updateSections
	" User selected a different template directory, update the receiver "

	self sectionSelector setItems: CGReadmeTmplManager sections.
	self sectionSelector updateTree.