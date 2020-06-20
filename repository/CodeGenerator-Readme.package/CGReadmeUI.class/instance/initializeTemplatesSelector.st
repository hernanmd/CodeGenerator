initialization
initializeTemplatesSelector

	self templatesSelector
		beForDirectory;
		label: 'Templates';
		ghostText: 'Please select template directory';
		textValue: self readmeGenerator templatesDir fullName;
		whenTextChanged: [ : fileRef | 
			self setTemplatesDir: fileRef.
			self templatesSelector textValuePending: fileRef fullName ]