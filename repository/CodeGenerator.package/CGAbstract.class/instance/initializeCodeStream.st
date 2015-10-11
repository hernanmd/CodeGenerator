initialize-release
initializeCodeStream
	" Private - Initialize receiver's code stream "
	
	codeStream ifNil: [ 
		codeStream := self defaultStreamClass on: (String new: 400) ].