generation
targetClass: aBaseName
	"Resolve and remember the target class for aBaseName (a <String>) via the resolver,
	 honouring the context's prefix, superclass and category. Answer the resolved <Class>.
	 Never mutates an unrelated unprefixed class when a prefix is active (Req 3)."

	currentClass := resolver
		                resolvePrefix: context prefix
		                name: (namePolicy validateClassName: aBaseName)
		                superclass: context superclass
		                category: context classCategory.
	^ currentClass