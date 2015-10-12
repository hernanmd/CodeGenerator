examples
exampleQCBMagritte3
	" The menu is rendered as an ordered list by the QCTreePageChoice and subclasses. The new child is added with an announcement (QCShowDetails). In the QCApplication this announcement is handled and here the new page is added. Opening the same object twice will select that object and not open the same object again. "

	CGQCBMagritte uniqueInstance
		setCleanTarget;
		targetClass: #HelloWorldAppWithMenu;
		generateMethodsUsingSuperclassChain.
	