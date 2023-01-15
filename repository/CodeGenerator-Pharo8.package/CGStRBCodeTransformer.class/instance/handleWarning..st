code-generation
handleWarning: exception

	(exception isKindOf: DuplicatedSlotName)
		ifTrue: [ self halt. " Do nothing " ].
