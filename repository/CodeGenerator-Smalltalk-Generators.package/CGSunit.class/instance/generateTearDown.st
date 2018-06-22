code-generation
generateTearDown

	^ generateTearDown 
		ifNil: [ generateTearDown := false ]