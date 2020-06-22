accessing
asTemplateSectionItem: sectionName
	" Answer a <String> to be used as list item "

	^ sectionName copyReplaceAll: '_' with: ' '