private
resolveClass: aClassNameOrClass
	"Answer the real (installed) class for aClassNameOrClass, or nil if it does not exist.
	 Accepts a real class/metaclass (answered as-is), an RBClass/RBMetaclass model wrapper
	 (resolved by its name), or a <String>/<Symbol> name. Ensures the modern refactoring API
	 targets the actual class, not an RBNamespace model."

	aClassNameOrClass isBehavior ifTrue: [ ^ aClassNameOrClass ].
	(aClassNameOrClass isKindOf: RBAbstractClass) ifTrue: [
		^ self classFor: aClassNameOrClass name ].
	^ self classFor: aClassNameOrClass