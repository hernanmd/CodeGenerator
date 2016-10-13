accessing - appending functions
addTranspose: param to: lval
	" Append a transpose statement of param and assign to lval "
	
	self 
		addSingleParameterFunction: 't' 
		parameter: param
		assignTo: lval