code-templates
templateForAddFamilyPart
	" Answer a <String> with the basic family part instantiation template "

	self halt.
	^ 'addFamilyPart{1}
	
	^ {2} new' format: { self targetSelector asString . self returnOperatorOrEmpty }