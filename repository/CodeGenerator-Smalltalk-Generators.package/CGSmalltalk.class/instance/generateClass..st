generation
generateClass: aString
	"Private - Compile and answer a new class named aString (a <String>/<Symbol>) as a
	 subclass of the target superclass, in the target class category. Uses the current
	 class installer (Fluid-style builder) rather than the removed
	 #subclass:instanceVariableNames:classVariableNames:poolDictionaries:category: form."

	| superclass ivars cvars |
	superclass := self classFor: self targetSuperclass.
	ivars := self defaultInstanceVariables substrings: ' '.
	cvars := self defaultClassVariables substrings: ' '.
	^ (Smalltalk classInstaller make: [ :builder |
		builder
			superclass: superclass;
			name: aString asSymbol;
			slots: (ivars collect: [ :each | each asSymbol ]) asArray;
			sharedVariables: (cvars collect: [ :each | each asSymbol ]) asArray;
			package: self targetClassCategory ])