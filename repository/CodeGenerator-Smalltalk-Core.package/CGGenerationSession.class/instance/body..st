method build
body: aString
	"Append aString (a <String>) to the current method build's source. Fail fast if no build
	 was started (guards against writing to a stale/nil stream)."

	methodBuildActive == true ifFalse: [
		^ self error: 'No method build in progress; send #startMethod first' ].
	methodBuildStream nextPutAll: aString