code-templates
templateForResetUniqueInstance

	^ 'resetUniqueInstance
	" self resetUniqueInstance "

	UniqueInstance
		ifNotNil: [ UniqueInstance := nil ]'