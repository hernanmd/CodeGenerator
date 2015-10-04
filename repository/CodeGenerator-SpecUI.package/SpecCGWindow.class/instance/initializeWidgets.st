initialization
initializeWidgets
	" Private - See superimplementor's comment "

	self initializeMainToolbar.
	growableList := self instantiate: SpecCGGrowableList.
	self initializeButtonToolbar.
	self focusOrder add: growableList.