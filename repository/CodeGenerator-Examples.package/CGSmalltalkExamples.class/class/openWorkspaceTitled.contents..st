examples
openWorkspaceTitled: titleString contents: contentString

	Smalltalk tools workspace 
		openContents: contentString 
		label: titleString.
	self inform: 'Code generation finished'.