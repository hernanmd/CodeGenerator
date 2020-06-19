initialization
initializeSyntaxSelector

	self languageSelector
		setItems: CGReadme markupSyntaxList;
		label: 'Syntax';
		whenSelectedItemChanged: [ : item | 
			self languageCheatsheet text: (self readmeGenerator syntaxSheetFor: item) ].

	self languageCheatsheet
		label: 'Syntax Cheatsheet'.