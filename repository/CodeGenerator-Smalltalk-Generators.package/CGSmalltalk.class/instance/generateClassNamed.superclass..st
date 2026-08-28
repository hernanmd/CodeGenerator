generation
generateClassNamed: aClassName superclass: aSuperclassName
	"Create and answer a class named aClassName (a <String>/<Symbol>) as a subclass of
	 aSuperclassName (a <String>/<Symbol>/<Class>), in the target class category, using the
	 current Fluid class installer (never the removed subclass:instanceVariableNames:... form)."

	| superclass cvars |
	superclass := self classFor: aSuperclassName.
	cvars := self classVarNames substrings: ' '.
	^ Smalltalk classInstaller make: [ :builder |
			  builder
				  superclass: superclass;
				  name: aClassName asSymbol;
				  slots: #(  );
				  sharedVariables:
					  (cvars collect: [ :each | each asSymbol ]) asArray;
				  package: self targetClassCategory ]