tests - class creation
testGenerateClassUsesModernInstaller
	"generateClass: creates a real class via the current class installer (regression for the removed subclass:instanceVariableNames:... form)."

	| gen cls |
	gen := self newGenerator.
	cls := gen generateClass: 'CGTstSprocket'.
	self assert: (Smalltalk hasClassNamed: 'CGTstSprocket').
	self assert: cls name equals: #CGTstSprocket.
	self assert: (cls category = 'CGTst-Generated' or: [ cls package name = 'CGTst-Generated' ])