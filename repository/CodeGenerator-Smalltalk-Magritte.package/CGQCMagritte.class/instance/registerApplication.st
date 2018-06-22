do-its
registerApplication
	" This message requires Seaside "

	self logInfo: 'Registering application...' , self applicationName.
	self targetClass registerForDevelopmentAt: self applicationName.
	self logInfo: 'done'.	
