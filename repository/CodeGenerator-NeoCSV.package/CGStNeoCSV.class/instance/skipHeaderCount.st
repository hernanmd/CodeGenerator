accessing
skipHeaderCount
	" Answer a <Number> with a the number of rows to skip in the generated code 	"

	^ skipHeaderCount
		ifNil: [ skipHeaderCount := 1]