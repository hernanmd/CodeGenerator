code-generation
categoryCodeTemplate

	^ categoryCodeTemplate
		ifNil: [ categoryCodeTemplate := self defaultCategoryCodeTemplate ]