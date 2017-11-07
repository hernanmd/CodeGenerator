examples
exampleMenuBuilder2

	| menuModel |
	
	menuModel := CGStSpcMenuBuilder new generateMenuSubMenuItems: #('Item1' 'Item2' 'Item3').	
	Smalltalk tools workspace 
		openContents: menuModel 
		label: 'MenuModel Generator'