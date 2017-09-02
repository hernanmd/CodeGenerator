code-generation
resolveWidgetFor: instVarName
	" Answer a <String> representing a Spec <Class> matching last part of instVarName. "

	^ AbstractWidgetModel subclasses 
		detect: [ : cls | (instVarName asLowercase endsWith: cls spcId) ]
		ifNone: [ 'Object' ]
