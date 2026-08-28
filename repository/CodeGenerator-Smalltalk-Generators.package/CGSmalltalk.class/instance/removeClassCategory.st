cleaning
removeClassCategory
	"Remove the target class's protocol named by classCategoryName, if the class defines it.
	 (Class>>organization was removed in Pharo 13; this uses the current protocol API and is
	 a no-op when the protocol is absent.)"

	| cls |
	cls := self classFor: self targetClass.
	cls ifNil: [ ^ self ].
	(cls hasProtocol: self classCategoryName)
		ifTrue: [ cls removeProtocol: self classCategoryName ]