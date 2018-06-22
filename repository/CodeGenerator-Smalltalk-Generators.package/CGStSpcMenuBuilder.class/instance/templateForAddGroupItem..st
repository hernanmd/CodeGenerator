code-templates
templateForAddGroupItem: subMenuSelector
	" Answer a <String> with the basic convenience template "

	^ '		addGroup: [ : group |
	group 
		addItem: [ : item | self { 1 } item ] ];' format: { self subMenuSelector }
