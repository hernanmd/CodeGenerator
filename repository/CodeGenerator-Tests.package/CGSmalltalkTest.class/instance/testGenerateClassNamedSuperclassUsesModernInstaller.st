tests - class creation
testGenerateClassNamedSuperclassUsesModernInstaller
	"generateClassNamed:superclass: creates a real subclass via the Fluid installer
	 (regression for the removed subclass:instanceVariableNames:... form)."

	| gen cls |
	gen := self newGenerator.
	cls := gen generateClassNamed: 'CGTstSprocketA' superclass: #Object.
	self assert: (Smalltalk hasClassNamed: 'CGTstSprocketA').
	self assert: cls superclass equals: Object.
	self assert: (cls category = 'CGTst-Generated' or: [ cls package name = 'CGTst-Generated' ])