generation
generateTestClass: aStringOrLiteral
	"Create and answer a test class named aStringOrLiteral (a <String>/<Symbol>) as a
	 subclass of the target test superclass (TestCase by default), in the target test
	 category, using the current Fluid class installer."

	^ Smalltalk classInstaller make: [ :builder |
			  builder
				  superclass: (self classFor: self targetTestSuperclass);
				  name: aStringOrLiteral asString asSymbol;
				  slots: #(  );
				  sharedVariables: #(  );
				  package: self targetTestCategory ]