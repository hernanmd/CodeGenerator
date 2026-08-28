collecting
collectAllInstanceMethodsAt: categoryName
	"Answer a <Collection> of the receiver's instance-side selectors in protocol categoryName,
	 including all superclasses. Uses the current class protocol API."

	^ self class withAllSuperclasses flatCollect: [ :e |
		  e selectorsInProtocol: categoryName ]