accessing
targetClass: aClassOrSymbol
	"Configure the class where generated code is written. Delegates to the shared
	 CGTargetClassResolver policy (F6): when a prefix is set the prefixed name is authoritative
	 and an unrelated unprefixed class is never reused; when no prefix is set an existing
	 exact-name class is reused, otherwise created in the target category with the receiver's
	 default class variables (e.g. Singleton's UniqueInstance)."

	^ targetClass := CGTargetClassResolver new
		                 resolvePrefix: (self hasTargetClassPrefix
				                  ifTrue: [ self targetClassPrefix ]
				                  ifFalse: [ nil ])
		                 name: aClassOrSymbol asString
		                 superclass: (self classFor: self targetSuperclass)
		                 category: self targetClassCategory
		                 classVariables: self defaultClassVariables