accessing - templates
templateManager
	
	^ templateManager
		ifNil: [ templateManager := CGReadmeTmplManager new ]