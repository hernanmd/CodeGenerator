initialization
initializeWidgets

	self instantiateModels: #(
		clearButton 			ButtonPresenter
		settingsButton 		ButtonPresenter
		badgesButton 		ButtonPresenter
		copyButton 			ButtonPresenter
		generateButton 		ButtonPresenter
		saveButton 			ButtonPresenter
		closeButton 			ButtonPresenter					
		).
	self initializeButtons.
	self initializeFocus.