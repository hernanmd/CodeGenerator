specs
defaultSpec

    <spec>
    ^ SpecLayout composed
		newColumn: [ : c | 
			c
				add: #repositoryName 		height: self inputTextHeight;
				add: #userName 				height: self inputTextHeight;
				add: #badges 				height: self inputTextHeight;								
				add: #sectionSelector;
				add: #buttonBar 			height: self toolbarHeight
 		]