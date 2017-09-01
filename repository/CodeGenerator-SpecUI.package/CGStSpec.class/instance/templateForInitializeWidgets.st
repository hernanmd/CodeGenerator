mustache-templates
templateForInitializeWidgets

	^ 'initializeWidgets
	" Private - See superimplementor''s comment "

	self instantiateModels: #({{ specInstVars }}).
	self focusOrder
		add: nil;
		add: nil.'