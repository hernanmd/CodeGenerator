accessing - csv
filenameId

	^ filenameId
		ifNil: [ filenameId := '$outputFile.t0' ]