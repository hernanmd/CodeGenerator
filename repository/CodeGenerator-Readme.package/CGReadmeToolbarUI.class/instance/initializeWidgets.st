initialization
initializeWidgets

	self instantiateModels: #(
		clearButton 			ButtonPresenter
		settingsButton 		ButtonPresenter
		copyButton 			ButtonPresenter
		generateButton 		ButtonPresenter
		previewButton 		ButtonPresenter
		saveButton 			ButtonPresenter
		closeButton 			ButtonPresenter					
		).
	self initializeButtons.
	self initializeFocus.