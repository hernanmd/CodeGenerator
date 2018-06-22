code-templates
codeForSkipHeader
	" Answer a <String> with a selector or code for skipping headers in the generated code "
	
	self skipHeaderCount = 0
		ifTrue: [ ^ String empty ].
	^ self skipHeaderCount = 1
		ifTrue: [ 'skipHeader;' ]
		ifFalse: [ self error: 'Should be implemented' ]