examples
exampleMenuBuilder2

	| menuCode |
	
	menuCode := CGStSpcMenuBuilder new generateMenuSubMenuItems: #('Item1' 'Item2' 'Item3').	
	Smalltalk tools workspace 
		openContents: menuCode 
		label: 'MenuModel Generator'