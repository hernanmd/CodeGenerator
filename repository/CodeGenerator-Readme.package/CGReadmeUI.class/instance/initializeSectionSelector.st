initialization
initializeSectionSelector

	self sectionSelector 
		setItems: CGReadmeTmplManager sections;
		displayBlock: [ : section | self formatSectionItem: section ]