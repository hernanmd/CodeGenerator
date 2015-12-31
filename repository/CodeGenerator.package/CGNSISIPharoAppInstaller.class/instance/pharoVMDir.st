accessing
pharoVMDir
	^ pharoVMDir
		ifNil: [ pharoVMDir := 'pharo-vm' ]