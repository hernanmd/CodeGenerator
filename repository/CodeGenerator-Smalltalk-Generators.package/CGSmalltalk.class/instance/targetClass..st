accessing
targetClass: aClassOrSymbol
	"Configure the class where generated code is written.
	 When a targetClassPrefix is set, the PREFIXED name is authoritative: the prefixed
	 class is looked up and created if absent, and an unrelated same-named unprefixed class
	 is never reused (fixes defect F6, where e.g. generating 'Pet' with prefix 'PS' silently
	 mutated a pre-existing Pet). When no prefix is set, an existing class of that exact
	 name is reused, otherwise it is created."

	| name |
	self hasTargetClassPrefix
		ifTrue: [
			name := self targetClassPrefix , aClassOrSymbol.
			(self classFor: name) ifNil: [ self generateClass: name ] ]
		ifFalse: [
			name := aClassOrSymbol.
			(self classFor: name) ifNil: [ self generateClass: name ] ].
	^ targetClass := self classFor: name