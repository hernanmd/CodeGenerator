tests - cleaning
testMethodCategoriesForClassExcludesUnclassified
	"Req 4: methodCategoriesForClass: answers real protocols and excludes the unclassified
	 protocol, using the Pharo-13 protocolNames API."

	| gen cls cats |
	gen := self newGenerator.
	gen targetClass: 'Cleanable'.
	gen addIVar: 'x'.
	cls := Smalltalk classNamed: 'CGTstCleanable'.
	cats := gen methodCategoriesForClass: cls.
	self assert: (cats includes: #accessing).
	self deny: (cats includes: Protocol unclassified)