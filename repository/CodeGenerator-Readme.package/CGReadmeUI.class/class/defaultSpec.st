specs
defaultSpec

    <spec>
    ^ SpecLayout composed
			newColumn: [ : col | 
				col newRow: [ : c | 
					c
						newColumn: [ : r | 
							r
								add: #repositoryName 			height: self inputTextHeight;
								add: #userName 					height: self inputTextHeight;
								add: #templatesSelector 		height: self inputTextHeight + 5;
								add: #licenseSelector 		height: self inputTextHeight + 5;
								add: #syntaxSelector 			height: self inputTextHeight + 5;
								add: #sectionSelector ];
						addVSplitter;
						newColumn: [ : r |
							r 
								add: #syntaxCheatsheet 		height: self inputTextHeight * 5;
								add: #textArea ] ];
						add: #toolbar height: self inputTextHeight ];
			yourself.
