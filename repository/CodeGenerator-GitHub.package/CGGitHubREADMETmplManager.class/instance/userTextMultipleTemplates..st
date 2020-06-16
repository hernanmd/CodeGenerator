accessing
userTextMultipleTemplates: allTemplates

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: 'The following template directories has multiple template files: ';
			nextPutAll: (self collectMultipleTemplatesFrom: allTemplates);
			nextPutAll: 'You should select which template to apply for each section' ]	
		
