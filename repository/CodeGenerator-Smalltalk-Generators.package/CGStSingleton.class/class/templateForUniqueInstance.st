code-templates
templateForUniqueInstance

	^ 'uniqueInstance

	UniqueInstance 
		ifNil: [ UniqueInstance := self createInstance ].
	^ UniqueInstance'