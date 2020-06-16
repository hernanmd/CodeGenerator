private - sections
defaultEmptyTemplate: tmplRefName

	^ String streamContents: [ : stream |
		stream
			nextPutAll: 'Template ';
			nextPutAll: tmplRefName;
			nextPutAll: ' is empty, please edit the template and generate the README again';
			cr; cr ]

