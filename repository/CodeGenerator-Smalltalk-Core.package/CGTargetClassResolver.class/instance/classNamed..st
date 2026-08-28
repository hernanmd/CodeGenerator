private
classNamed: aName
	"Answer the installed class named aName (a <String>/<Symbol>), or nil if absent."

	^ Smalltalk classNamed: aName asSymbol