initialization
initializeTemplatesSelector

	self templatesSelector
		label: 'Templates';
		ghostText: 'Please select template directory';
		textValue: self readmeGenerator templatesDir fullName;
		fileExtension: 'md';
		whenTextChanged: [ : text | self setTemplatesDir: text ]