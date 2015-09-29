initialize
initialize
	" Private - Map Smalltalk binary operators to selector names "

	super initialize.
	self selectorsMap 
		at: #, put: #comma;
		at: #,, put: #doubleComma;
		at: #+ put: #plus;
		at: #- put: #minus;
		at: #* put: #multiply;
		at: #% put: #modulo;
		at: #/ put: #divide;
		at: #// put: #quotient;
		at: #\ put: #difference;
		at: #\\ put: #mod;
		at: #\\\ put: #modDSA;
		at: #+* put: #preMultiply;
		at: #** put: #raisedTo;
		at: #<< put: #leftShift;
		at: #>> put: #rightShift;
		at: #| put: #disjunction;
		at: #& put: #conjunction;
		at: #@ put: #atSign;
		at: #= put: #equality;
		at: #~= put: #inequality;
		at: #== put: #identity;
		at: #~~ put: #inequalityShallow;
		at: #<= put: #lessOrEqualThan;
		at: #>= put: #greaterOrEqualThan;
		at: #> put: #greaterThan;
		at: #< put: #lessThan;
		yourself