initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self instantiateModels: #(repositoryName	Object		
descriptionText	TextModel		
installationText	TextModel		
stInstExpr	Object		
devInstExpr	Object		
usageNotes	Object		
usageText	TextModel		
badges	Object		
).
	self initializeFocus.