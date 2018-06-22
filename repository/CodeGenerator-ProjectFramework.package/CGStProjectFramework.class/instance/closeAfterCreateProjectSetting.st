accessing
closeAfterCreateProjectSetting
	^ closeAfterCreateProjectSetting
		ifNil: [ closeAfterCreateProjectSetting := true ]