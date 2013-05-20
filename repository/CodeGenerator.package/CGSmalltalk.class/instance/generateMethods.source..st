code-generation
generateMethods: aSelectorCollection source: aSourceCollection
	" Private - Generate target methods from aSelectorCollection"
	
	aSelectorCollection with: aSourceCollection do: [: sel : body |
		self targetSelector: sel.
		self sourceString: body.
		self generateMethod ]