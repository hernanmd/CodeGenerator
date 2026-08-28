collecting
collectInstanceMethodsAt: categoryName
	"Answer a <Collection> of the receiver's instance-side selectors in protocol categoryName,
	 using the current class protocol API."

	^ self class selectorsInProtocol: categoryName