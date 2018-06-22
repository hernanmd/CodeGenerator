code-templates
templateForTargetSelector
	" Answer a <String> with the basic convenience template "

	^ '{1}
	
	{2} self {1}with: nil' format: { self targetSelector asString . self returnOperatorOrEmpty }
