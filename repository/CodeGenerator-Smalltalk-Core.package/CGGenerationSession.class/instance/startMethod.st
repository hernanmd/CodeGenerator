method build
startMethod
	"Begin a method build: allocate a fresh source stream. Fail fast if a build is already in
	 progress (out-of-order lifecycle use)."

	methodBuildActive == true ifTrue: [
		^ self error:
			  'A method build is already in progress; finish it first' ].
	methodBuildStream := WriteStream on: String new.
	methodBuildActive := true