mustache-templates
templateForInitializeWidgets

	^ 'initializeWidgets
	" Private - See superimplementor''s comment "

	self instantiateModels: #({{ specInstVarsIW }}).
	{{ specInstVarsFO }}. '