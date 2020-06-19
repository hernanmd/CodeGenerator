private
templatesSummary
	" Answer a <String> summarizing the amount of templates and location "
	
	^ String streamContents: [ : stream |
		stream
			nextPutAll: 'Templates directory: ';
			nextPutAll: self readmeGenerator templatesDir fullName;
			cr;
			nextPutAll: 'Number of templates types: ';
			nextPutAll: self readmeGenerator templatesTypesCount asString;
			cr;
			nextPutAll: 'Number of total templates: ';
			nextPutAll: self readmeGenerator templatesCount asString  ]