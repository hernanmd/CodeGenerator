private
createClassNamed: aName superclass: aSuperclass category: aCategory classVariables: aClassVarString
	"Create and answer a class named aName as a subclass of aSuperclass in package aCategory,
	 declaring the space-separated class variables in aClassVarString. Signal CGGenerationError
	 (naming aName) on failure."

	| cvars |
	cvars := (aClassVarString ifNil: [ '' ]) substrings: ' '.
	^ [
		  Smalltalk classInstaller make: [ :builder |
				  builder
					  superclass: aSuperclass;
					  name: aName asSymbol;
					  slots: #(  );
					  sharedVariables:
						  (cvars collect: [ :each | each asSymbol ]) asArray;
					  package: aCategory ] ]
		  on: Error
		  do: [ :ex |
				  CGGenerationError signal:
					  'Could not create class ' , aName asString , ': '
					  , ex messageText ]