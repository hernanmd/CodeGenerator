code-templates
templateForTargetSelector
	" Answer a <String> with the basic convenience template "

	^ '{1}
	
	^ self {1}: nil' format: { self targetSelector asString }
