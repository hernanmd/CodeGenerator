examples
exampleFSMCaseStmt2
	" Create a class and add some instance variables with their getters and setters "
	
	CGStFSM_CaseStmts2 new
		setCleanTarget;
		targetClassCategory: 'FSM-Core';
		targetClass: #FSMCaseStmts2;
		targetSelector: #someMessage;
		initialState: #State0;
		transitions: (Dictionary new 
			at: #State0 put: #State1;
			at: #State1 put: #State0;
			yourself);
		generateMethods.
	self openOnClass: #FSMCaseStmts2.
