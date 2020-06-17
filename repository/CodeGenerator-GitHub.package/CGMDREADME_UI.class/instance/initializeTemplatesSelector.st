initialization
initializeTemplatesSelector

	self templatesSelector
		buttonLabel: 'Select';
		label: 'Templates';
		ownerAction: [ : selections | selections notNil and: [ selections isCollection and: [ self templatesSelector text: (selections joinUsing: ', ') ] ] ];
		textFieldDelimiter: $;;
		ghostText: 'Please select template directory'.