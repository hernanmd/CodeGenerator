cleaning
cleanAllMethodsInCategory: categoryName
	"Remove every selector classified under categoryName (a protocol name) from the target
	 class, using the current selectorsInProtocol: API."

	| cls |
	cls := self classFor: self targetClass.
	cls ifNil: [ ^ self ].
	(cls selectorsInProtocol: categoryName) do: [ :sel |
		cls removeSelector: sel ]