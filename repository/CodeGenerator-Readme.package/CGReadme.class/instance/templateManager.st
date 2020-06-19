accessing
templateManager
	
	^ templateManager
		ifNil: [ templateManager := CGReadmeTmplManager new ]