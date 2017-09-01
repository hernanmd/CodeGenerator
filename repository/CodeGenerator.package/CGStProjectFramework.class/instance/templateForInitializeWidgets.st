code-templates
templateForInitializeWidgets
	" Answer a <String> with the #applicationClass instantiation template "

	^ 'initializeWidgets

	self initializeApplication.
	super initializeWidgets.
	self instantiateModels: #().'