examples
exampleMenuBuilder1

	| menuCode |
	
	menuCode := CGStSpcMenuBuilder new generateMenuActionItems: #('Item1' 'Item2' 'Item3').	
	Smalltalk tools workspace 
		openContents: menuCode 
		label: 'MenuModel Generator'