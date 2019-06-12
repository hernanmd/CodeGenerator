accessing
coveragePackages 

	^ coveragePackages
		ifNil: [ coveragePackages := OrderedCollection new ]