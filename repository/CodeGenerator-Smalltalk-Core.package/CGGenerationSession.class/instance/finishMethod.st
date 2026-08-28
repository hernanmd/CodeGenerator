method build
finishMethod
	"Complete the current method build: compile the accumulated source into the current target
	 class (recording its selector for clean-by-identity) and reset the build stream so the next
	 build cannot append to this buffer. Fail fast if no build was started. Answer the compiled
	 selector."

	| source selector |
	methodBuildActive == true ifFalse: [
		^ self error: 'No method build in progress; send #startMethod first' ].
	currentClass ifNil: [
		^ self error: 'No target class set for this session' ].
	source := methodBuildStream contents.
	selector := currentClass
		            compile: source
		            classified: self context methodCategory.
	generatedSelectors add: selector.
	methodBuildStream := nil.
	methodBuildActive := false.
	^ selector