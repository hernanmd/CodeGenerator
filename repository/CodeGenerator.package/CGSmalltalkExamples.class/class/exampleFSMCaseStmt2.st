examples
exampleFSMCaseStmt2
	" Create a class and add some instance variables with their getters and setters "
	
	CGStFSM_CaseStmts2 new
		setCleanTarget;
		targetClassCategory: 'FSM-Core';
		targetClass: #FSMCaseStmts2;
		targetSelector: #someMessage;
		initialState: #state0;
		transitions: (Dictionary new 
			at: #state0 put: #state1;
			at: #state1 put: #state0;
			yourself);
		generateMethods.
	Smalltalk tools browser openOnClass: #FSMCaseStmts2 asClass.		
	self inform: 'Done!'.