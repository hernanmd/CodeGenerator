code-generation
categoryCodeTemplate
	" Answer the method category <String> where templates will be taken "

	^ categoryCodeTemplate
		ifNil: [ categoryCodeTemplate := self defaultCategoryCodeTemplate ]