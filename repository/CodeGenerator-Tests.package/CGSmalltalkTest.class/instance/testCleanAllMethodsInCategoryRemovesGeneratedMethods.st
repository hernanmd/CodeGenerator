tests - cleaning
testCleanAllMethodsInCategoryRemovesGeneratedMethods
	"Req 4: cleanAllMethodsInCategory: removes previously generated methods in a protocol
	 using the Pharo-13 protocol API (selectorsInProtocol:), not the removed
	 Class>>organization/listAtCategoryNamed:."

	| gen cls |
	gen := self newGenerator.
	gen targetClass: 'Cleanable'.
	gen addIVar: 'x'.
	cls := Smalltalk classNamed: 'CGTstCleanable'.
	self assert: (cls includesSelector: #x).
	gen cleanAllMethodsInCategory: 'accessing'.
	self deny: (cls includesSelector: #x).
	self deny: (cls includesSelector: #x:)