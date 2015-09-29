code-templates
tempalteForUniqueInstance

	^ 'uniqueInstance

	UniqueInstance 
		ifNil: [ UniqueInstance := self createInstance ].
	^ UniqueInstance'