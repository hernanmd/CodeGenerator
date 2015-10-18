code-templates
templateForAddFamilyPart
	" Answer a <String> with the basic family part instantiation template "

	^ '{1}
	
	^ {1} new' format: { self targetSelector asString . self returnOperatorOrEmpty }