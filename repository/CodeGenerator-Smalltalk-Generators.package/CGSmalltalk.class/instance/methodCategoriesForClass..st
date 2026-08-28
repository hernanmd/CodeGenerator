cleaning
methodCategoriesForClass: aClass
	"Answer a <Collection> of protocol names (all non-unclassified) in aClass, using the
	 current class protocol API (Pharo 13 removed Class>>organization)."

	^ aClass protocolNames reject: [ :each | each = Protocol unclassified ]