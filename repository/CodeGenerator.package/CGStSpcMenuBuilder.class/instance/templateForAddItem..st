code-templates
templateForAddItem: itemText
	" Answer a <String> with the basic convenience template "

	^ '			addItem: [ : item | 
					item 
						name: {1};
						action: [  ] ]' format: (Array with: itemText surroundedBySingleQuotes)