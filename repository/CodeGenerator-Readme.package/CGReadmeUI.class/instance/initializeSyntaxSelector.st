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
			(ann widget findDeeplyA: RubPluggableTextMorph) 
				font: StandardFonts codeFont ]