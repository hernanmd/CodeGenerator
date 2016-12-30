examples
exampleFSMCaseStmt1
	" Create a class and add some instance variables with their getters and setters "
	
	CGStFSM_CaseStmts1 new
		setCleanTarget;
		targetClassCategory: 'FSM-Core';
		targetClass: #FSMCaseStmts1;
		addInstanceVariables: #(#currentState);
		initialState: #state0;
		transitions: (Dictionary new 
			at: #state0 put: #state1;
			at: #state1 put: #state0;
			yourself);
		generateMethods.
	Smalltalk tools browser openOnClass: #FSMCaseStmts1 asClass.		
	self inform: 'Done!'.