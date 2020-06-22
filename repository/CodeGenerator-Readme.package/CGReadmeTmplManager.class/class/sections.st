private - sections
sections
	" Answer a <Collection> of <CGReadmeTemplateContainer> for populating a list "

	^ self templatesDir entries 
		collect: [ : dirRef | self newTemplateContainerFor: dirRef basename ]
		thenReject: [ : tmplContainer | self nonSections includes: tmplContainer containerName ]
