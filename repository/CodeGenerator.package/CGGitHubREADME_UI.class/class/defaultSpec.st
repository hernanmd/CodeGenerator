specs
defaultSpec

    <spec>
    ^ SpecLayout composed
		newColumn: [ : c | 
			c
				add: #repositoryName 			height: self inputTextHeight;
				add: #userName 					height: self inputTextHeight;
				add: #badges 					height: self inputTextHeight;								
				add: #sectionSelector;
				add: #clearTemplateButton 	height: self toolbarHeight;
				add: #buttonBar 				height: self toolbarHeight
 		]