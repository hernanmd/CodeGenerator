initialize-release
initializeCodeStream
	" Private - Initialize receiver's settings "
	
	codeStream ifNil: [ 
		codeStream := self defaultStreamClass on: (String new: 400) ].