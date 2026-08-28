collecting
collectAllClassMethodsAt: categoryName
	"Answer a <Collection> of the receiver's class-side selectors in protocol categoryName, including all superclasses. Uses the current class protocol API (Pharo 13 removed Class>>organization)."

	^ self class withAllSuperclasses flatCollect: [ :e |
		  e class selectorsInProtocol: categoryName ]