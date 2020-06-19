defaults
defaultTemplateRemoteUrlToUse

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'https://git@github.com';
			nextPut: $/;			
			nextPutAll: self templatesUsername;
			nextPut: $/;
			nextPutAll: self templatesRepositoryDir;
			nextPutAll: '.git' ]