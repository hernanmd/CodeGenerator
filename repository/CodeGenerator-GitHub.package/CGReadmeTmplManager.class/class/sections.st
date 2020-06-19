private - sections
sections
	" Answer a <Collection> with titles for sections for populating a list "

	^ self templatesDir entries 
		collect: [ : dirRef | self asTemplateSectionItem: dirRef basename ]
		thenReject: [ : sectionName | self nonSections includes: sectionName ]
