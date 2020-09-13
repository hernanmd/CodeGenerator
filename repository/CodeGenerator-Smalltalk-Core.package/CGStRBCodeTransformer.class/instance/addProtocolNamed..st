code-generation
addProtocolNamed: protocolName
	" Add protocolName as a new receiver's protocol "

	self logInfo: 'Adding protocol named: ' , protocolName.
	(RBAddProtocolChange 
		addProtocolNamed: protocolName 
		in: self targetClass) execute.
	self logInfo: 'done'.