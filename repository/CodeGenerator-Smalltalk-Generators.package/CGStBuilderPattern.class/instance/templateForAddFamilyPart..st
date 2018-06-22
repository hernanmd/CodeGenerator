code-templates
templateForAddFamilyPart: partNumber
	" Answer a <String> with the basic family part instantiation template "

	| productPartName |
	productPartName := self productPartClassName asString , partNumber asString.
	^ 'add{1}
	
	^ self product addPart: self create{1}' format: { productPartName }