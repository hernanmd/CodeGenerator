code-templates
templateForAddSubmenuItem: itemText
	" Answer a <String> with the basic convenience template "

	| menuItemExpr |
	menuItemExpr := itemText isSymbol 
		ifTrue: [ 'self translator t' , itemText asString capitalized ]
		ifFalse: [ itemText surroundedBySingleQuotes ].
	^ '			addItem: [ : item | 
					item 
						name: {1};
						subMenu: self {2} ]' format: (Array 
							with: menuItemExpr  
							with: 'subMenuFor' , itemText capitalized)