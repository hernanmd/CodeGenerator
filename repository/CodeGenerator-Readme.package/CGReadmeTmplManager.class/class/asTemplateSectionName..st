accessing
asTemplateSectionName: sectionName
	" Answer a <String> to be used as template name "

	^ sectionName copyReplaceAll: ' ' with: '_'