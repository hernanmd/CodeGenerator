initialization
formatSectionItem: aCGReadmeTemplateContainer

	^ String streamContents: [ : stream |
		stream 
			nextPutAll: aCGReadmeTemplateContainer containerName;
			space;
			nextPutAll: '-- ';
			nextPutAll: aCGReadmeTemplateContainer templatesCount asString;
			nextPutAll: ' templates ';
			nextPutAll: aCGReadmeTemplateContainer templatesDiskSizeInKb between: $( and: $) ]