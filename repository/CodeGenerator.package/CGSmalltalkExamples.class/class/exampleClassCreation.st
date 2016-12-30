examples
exampleClassCreation
	" Create a class and add some instance variables with their getters and setters "
	
	CGSmalltalk new
		setCleanTarget;
		targetClassCategory: 'MPIRunner-Core';
		targetClass: #MPIRunner;
		addInstanceVariables: #(#nproc #submitToQueue).
	Smalltalk tools browser openOnClass: #MPIRunner asClass.		
	self inform: 'Done!'.