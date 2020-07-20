initialization
initializeSyntaxSelector

	self syntaxSelector
		setItems: CGReadme markupSyntaxList;
		label: 'Syntax';
		whenSelectedItemChanged: [ : item | 
			self syntaxCheatsheet text: (self readmeGenerator syntaxSheetFor: item) ].

	self syntaxCheatsheet
		label: 'Syntax Cheatsheet';
		whenBuiltDo: [ : ann |
			self syntaxSelector setIndex: 1.
			self setCodeFont: ann ]