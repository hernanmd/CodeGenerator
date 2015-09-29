code-templates
tempalteForResetUniqueInstance

	^ 'resetUniqueInstance
	" self resetUniqueInstance "

	UniqueInstance
		ifNotNil: [ UniqueInstance := nil ]'