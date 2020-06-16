examples
openOnClass: aClassName
	" Private - Assume aClassName to be a <Symbol>. Open a browser tool on aClassName "

	(self class environment at: aClassName) browse.
	self informMessage: 'Code generation finished'.