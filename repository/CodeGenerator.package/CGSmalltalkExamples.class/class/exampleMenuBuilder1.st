examples
exampleMenuBuilder1

	| menuModel |
	
	menuModel := CGStSpcMenuBuilder new generateMenuActionItems: #('Item1' 'Item2' 'Item3').	
	Smalltalk tools workspace 
		openContents: menuModel 
		label: 'MenuModel Generator'