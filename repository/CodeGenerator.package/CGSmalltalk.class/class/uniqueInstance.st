instance creation
uniqueInstance

	UniqueInstance 
		ifNil: [ UniqueInstance := self createInstance ].
	^ UniqueInstance