accessing - csv
fieldSeparator

	^ fieldSeparator
		ifNil: [ fieldSeparator := '\t' ]