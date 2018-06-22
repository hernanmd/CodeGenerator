accessing
useAuthoring
	" If <true> enable setting the authoring annotations on code "

	^ useAuthoring
		ifNil: [ useAuthoring := false ]