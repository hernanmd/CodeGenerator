code-generation
parameter

	^ parameter
		ifNil: [ parameter := self defaultParameter ]			