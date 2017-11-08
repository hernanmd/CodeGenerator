code-templates
templateForAddMenuGroup: stream

	stream
		nextPutAll: '^ MenuModel new'; 
		crtab.
	self templateForAddMenuGroupBlock: stream
