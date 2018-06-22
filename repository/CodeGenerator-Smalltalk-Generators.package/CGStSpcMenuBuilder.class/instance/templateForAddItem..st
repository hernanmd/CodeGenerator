code-templates
templateForAddItem: itemText
	" Answer a <String> with the basic convenience template "

	| menuItemExpr |
	menuItemExpr := itemText isSymbol 
		ifTrue: [ 'self translator t' , itemText asString capitalized ]
		ifFalse: [ itemText surroundedBySingleQuotes ].

	^ '			addItem: [ : item | 
					item 
						name: {1};
						action: [  ] ]' format: (Array with: menuItemExpr)