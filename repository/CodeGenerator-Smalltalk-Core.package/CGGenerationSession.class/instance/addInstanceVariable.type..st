generation
addInstanceVariable: aName type: aTypeString
	"Add an instance variable named aName (a <String>) with commented, typed accessors to the
	 current target class, routed through the transformer port's documented
	 #addTypedInstanceVariable:type:class: operation. The name is normalized by the name policy;
	 non-identifier names are skipped; the accessor selectors are recorded for clean-by-identity."

	| ivarName |
	currentClass ifNil: [
		^ self error: 'No target class set for this session' ].
	ivarName := namePolicy instVarNameFor: aName.
	(namePolicy isValidIdentifier: ivarName) ifFalse: [ ^ self ].
	self transformer
		addTypedInstanceVariable: ivarName
		type: aTypeString
		class: currentClass name asString.
	generatedSelectors add: ivarName asSymbol.
	generatedSelectors add: (ivarName , ':') asSymbol