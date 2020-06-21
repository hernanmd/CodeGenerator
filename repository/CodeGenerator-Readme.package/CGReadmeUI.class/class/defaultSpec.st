specs
defaultSpec

    <spec>
    ^ SpecLayout composed
			newRow: [ : c | 
				c 
					newColumn: [ : r | 
						r
							add: #repositoryName 			height: self inputTextHeight;
							add: #userName 					height: self inputTextHeight;
							add: #templatesSelector 		height: self inputTextHeight + 5;
							add: #licenseSelector 		height: self inputTextHeight + 5;
							add: #syntaxSelector 		height: self inputTextHeight + 5;
							add: #sectionSelector;
							add: #generateSectionsButton height: self inputTextHeight ];
					newColumn: [ : r |
						r 
							add: #syntaxCheatsheet 	height: self inputTextHeight * 5;
							add: #mdTextArea;
							add: #toolbar 					height:  self toolbarHeight ] ];
			yourself.
