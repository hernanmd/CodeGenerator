examples
exampleMenuBuilder4

	| menuModel |
	
	menuModel := CGStSpcMenuBuilder new generateMenuSubMenuItems: #('Item1' #('Sub1Item1' 'Sub1Item2') 'Item2' 'Item3').	
	Smalltalk tools workspace 
		openContents: menuModel 
		label: 'MenuModel Generator'