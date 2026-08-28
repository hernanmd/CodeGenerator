resolving
resolvePrefix: aPrefix name: aBaseName superclass: aSuperclass category: aCategory
	"Answer the authoritative target class for aBaseName under aPrefix, with no class
	 variables. See #resolvePrefix:name:superclass:category:classVariables:."

	^ self
		  resolvePrefix: aPrefix
		  name: aBaseName
		  superclass: aSuperclass
		  category: aCategory
		  classVariables: ''