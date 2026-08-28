collecting
collectClassMethodsAt: categoryName
	"Answer a <Collection> of the receiver's class-side selectors in protocol categoryName,
	 using the current class protocol API."

	^ self class class selectorsInProtocol: categoryName