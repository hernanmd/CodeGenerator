transformer port
addTypedInstanceVariable: aName type: aTypeString class: aClassName
	"Transformer-port operation (documented primary entry for schema-driven typed accessors):
	 add an instance variable named aName (a <String>) of type aTypeString (a <String>) with
	 commented, typed accessors to the class named aClassName (a <String>). Default is
	 unsupported; strategies that support it override."

	^ self unsupported: 'addTypedInstanceVariable:type:class:'