code-templates
templateForAddMenuGroup: stream

	stream
		nextPutAll: '^ MenuModel new'; crtab;
		nextPutAll: 'addGroup: [ : group | '; crtab; tab;			
		nextPutAll: 'group'; cr.
