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
							add: #badgesSelector 					height: self inputTextHeight + 5;
							add: #languageSelector 		height: self inputTextHeight + 5;
							add: #sectionSelector ];
					newColumn: [ : r |
						r add: #mdTextArea ] ];
			yourself.
