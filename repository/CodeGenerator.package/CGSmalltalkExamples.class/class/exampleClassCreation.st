examples
exampleClassCreation
	" Create a class and add some instance variables with their getters and setters "
	
	CGSmalltalk uniqueInstance
		setCleanTarget;
		targetClassCategory: 'MPIRunner-Core';
		targetClass: #MPIRunner;
		addInstanceVariables: #(#nproc #submitToQueue).
	self inform: 'Done!'.